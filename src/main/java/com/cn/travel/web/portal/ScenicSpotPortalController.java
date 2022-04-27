package com.cn.travel.web.portal;

import com.cn.travel.cms.hotel.entity.Hotel;
import com.cn.travel.cms.hotel.service.imp.HotelService;
import com.cn.travel.cms.order.entity.Order;
import com.cn.travel.cms.order.service.IOrderService;
import com.cn.travel.cms.scenicSpot.entity.ScenicSpot;
import com.cn.travel.cms.scenicSpot.service.IScenicSpotService;
import com.cn.travel.cms.scenicSpotComment.entity.ScenicSpotComment;
import com.cn.travel.role.user.entity.User;
import com.cn.travel.role.user.service.IUserService;
import com.cn.travel.utils.Tools;
import com.cn.travel.web.base.BaseController;
import com.cn.travel.web.base.PageParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpSession;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class ScenicSpotPortalController extends BaseController {

    @Autowired
    IScenicSpotService scenicSpotService;
    @Autowired
    IUserService userService;
    @Autowired
    IOrderService orderService;
    @Autowired
    HotelService hotelService;

    /**
     * 功能介绍：跳转添加评论页面
     * 参数介绍(@param)：
     * 返回值介绍(@return):
     **/
    @RequestMapping(value = "/addSpotComment",method = RequestMethod.GET)
    public ModelAndView addSpotComment(String pjsp,String orderid,String cptype) throws Exception {
        ModelAndView mv = this.getModeAndView();

        mv.addObject("pjsp",pjsp);
        mv.addObject("orderid",orderid);
        mv.addObject("cptype",cptype);

        mv.setViewName("portal/addSpotComment");
        return mv;
    }
    /**
     * 功能介绍：添加景点评论信息
     * 参数介绍(@param)：
     * 返回值介绍(@return):
     **/
    @RequestMapping(value = "/addSpotComment",method = RequestMethod.POST)
    public ModelAndView addComment(ScenicSpotComment scenicSpotComment,String orderid,String cptype,RedirectAttributes redirectAttributes,HttpSession httpSession) throws Exception {

        ModelAndView mv = this.getModeAndView();

        if (Tools.isEmpty(scenicSpotComment.getPjdj())){
            mv.addObject("message","评论等级不能为空!");
            mv.setViewName("portal/addSpotComment");
            return mv;
        }

            //查询产品
            if (cptype.equals("1")){
                ScenicSpot scenicSpot = scenicSpotService.findById(scenicSpotComment.getPjcp());
                System.out.println(scenicSpot.getSpotName());
                System.out.println(scenicSpot.getImgUrl());
                scenicSpotComment.setPjcpname(scenicSpot.getSpotName());
                scenicSpotComment.setPjcpimgurl(scenicSpot.getImgUrl());
                scenicSpotComment.setPjcptype("1");
            }
            else{
                Hotel hotel = hotelService.findById(scenicSpotComment.getPjcp());
                scenicSpotComment.setPjcpname(hotel.getHotelName());
                scenicSpotComment.setPjcpimgurl(hotel.getImgUrl());
                scenicSpotComment.setPjcptype("2");
            }

        //格式化日期
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = df.format(new Date());
        Timestamp pjtime = Timestamp.valueOf(time);

        scenicSpotComment.setPjtime(pjtime);

        boolean flag = scenicSpotService.addComment(scenicSpotComment);
        if (flag){
          //修改订单状态
            Order order = orderService.findById(orderid);
            order.setState(3);
            orderService.update(order);
          //  redirectAttributes.addFlashAttribute("message","用户名密码不得为空!");
            return new ModelAndView(new RedirectView("/myComment"));
        }else{
            mv.addObject("message","系统错误，请重新填写!");
            mv.setViewName("portal/addSpotComment");
            return mv;
        }
    }
    @RequestMapping("/travelSpot")
    public ModelAndView travelSpot(PageParam pageParam) throws Exception {
        ModelAndView mv = this.getModeAndView();
        if(pageParam.getPageNumber()<1){
            pageParam =new PageParam();
            long count = 0;
            try {
                count = scenicSpotService.count2();
            } catch (Exception e) {
                e.printStackTrace();
            }
            pageParam.setCount(count);
            if(count<=7){
                pageParam.setSize(1);
            }else{
                pageParam.setSize(count%7==0?count/7:count/7+1);
            }
            pageParam.setPageNumber(1);
            pageParam.setPageSize(7);
        }
        mv.addObject("pageData", scenicSpotService.findByPage(pageParam.getPageNumber(),pageParam.getPageSize()));
        mv.addObject("pageDataHotel", hotelService.findByPage(1,5));
        mv.addObject("pageParam",pageParam);
        mv.setViewName("portal/travelSpot");
        return mv;
    }

    @RequestMapping("/scenicSpotPortalView")
    public ModelAndView scenicSpotPortalView(String id){
        ModelAndView mv = this.getModeAndView();
        try {
            mv.addObject("entity",scenicSpotService.findById(id));
        }catch (Exception e){
            e.printStackTrace();
        }
        mv.addObject("pageDataComment",scenicSpotService.findCommentById(id,"1"));
        mv.addObject("pageDataHotel", hotelService.findByPage(1,5));
        mv.setViewName("portal/travelSpotView");
        return mv;
    }

    @RequestMapping("/travelSpotCreatOrder")
    public ModelAndView travelSpotCreatOrder(String id,HttpSession httpSession){
        ModelAndView mv = this.getModeAndView();
        try {
            ScenicSpot scenicSpot = scenicSpotService.findById(id);
            User user = userService.findByUserName(httpSession.getAttribute("userName").toString());
            Order order  = new Order();
            order.setImgUrl(scenicSpot.getImgUrl());
            order.setId(Tools.getUUID());
            order.setUserId(user.getId());
            order.setUserName(user.getUserName());
            order.setProductId(scenicSpot.getId());
            order.setProductName(scenicSpot.getSpotName());
            order.setFee(scenicSpot.getTicketsMessage());
            order.setProductType(1);
            order.setLinkTel(user.getLinkTel());
            order.setIcCode(user.getIcCode());
            order.setRequirement("无");
            order.setState(0);
            order.setOrderCode("S"+ Tools.getUUID().substring(0,6).toUpperCase());
            order.setOrderTime(Tools.date2Str(new Date(),"yyyy-MM-dd"));
            order.setSetoffTime(scenicSpot.getOpenTime());
            orderService.save(order);
            mv.addObject("entity",scenicSpot);
            mv.addObject("CreatSuccess",true);
        }catch (Exception e){
            e.printStackTrace();
        }
        mv.setViewName("portal/travelSpotView");
        return mv;
    }
}
