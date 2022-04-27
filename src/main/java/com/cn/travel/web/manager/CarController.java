package com.cn.travel.web.manager;

import com.cn.travel.cms.car.entity.Car;
import com.cn.travel.cms.car.service.imp.CarService;
import com.cn.travel.cms.travelRoute.entity.TravelRoute;
import com.cn.travel.cms.travelRoute.service.imp.TravelRouteService;
import com.cn.travel.utils.Tools;
import com.cn.travel.web.base.BaseController;
import com.cn.travel.web.base.PageParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/manager")
public class CarController extends BaseController {
    @Autowired
    CarService carService;

    @RequestMapping("/carList")
    public ModelAndView travelRouteList(PageParam pageParam, @RequestParam(value = "query", required = false) String query){
        ModelAndView mv = this.getModeAndView();
        if(pageParam.getPageNumber()<1){
            pageParam =new PageParam();
            long count = 0;
            try {
                count = carService.count();
            } catch (Exception e) {
                e.printStackTrace();
            }
            pageParam.setCount(count);
            if(count<=10){
                pageParam.setSize(1);
            }else{
                pageParam.setSize(count%10==0?count/10:count/10+1);
            }
            pageParam.setPageNumber(1);
            pageParam.setPageSize(10);
        }
        List<Car> list = carService.findByPage(pageParam.getPageNumber(),pageParam.getPageSize(), query);
        mv.addObject("pageData", list);
        if (Tools.notEmpty(query)) {
            mv.addObject("query", query);
            pageParam.setCount(list.size());
            if (list.size() > pageParam.getPageSize()) {
                pageParam.setSize(list.size() / pageParam.getPageSize());
            } else {
                pageParam.setSize(1);
            }
        }
        mv.addObject("pageParam",pageParam);
        mv.setViewName("car/carList");
        return mv;
    }

    @RequestMapping("/carAdd")
    public ModelAndView travelRouteAdd(){
        ModelAndView mv = this.getModeAndView();
        mv.addObject("entity",new Car());
        mv.setViewName("car/carEdit");
        return mv;
    }

    @RequestMapping("/carView")
    public ModelAndView travelRouteView(String id){
        ModelAndView mv = this.getModeAndView();
        try {
            mv.addObject("entity",carService.findById(id));
        }catch (Exception e){
            e.printStackTrace();
        }
        mv.setViewName("car/carView");
        return mv;
    }

    @RequestMapping("/carEdit")
    public ModelAndView travelRouteEdit(String id){
        ModelAndView mv = this.getModeAndView();
        try {
            mv.addObject("entity",carService.findById(id));
        }catch (Exception e){
            e.printStackTrace();
        }
        mv.setViewName("car/carEdit");
        return mv;
    }

    @RequestMapping("/carSave")
    public String travelRouteSave(HttpServletRequest request, String id, @RequestParam("fileName") MultipartFile file){
        Car entity = null;
        try {
            if(Tools.notEmpty(id)){
                entity = carService.findById(id);
            }else{
                entity = new Car();
            }
            this.bindValidateRequestEntity(request,entity);
            if(file != null && !file.isEmpty()){
                String fileName = file.getOriginalFilename();
                int size = (int) file.getSize();
                System.out.println(fileName + "-->" + size);

                String path = "D:/idea/travel/target/classes/static/car" ;
                File dest = new File(path + "/" + fileName);
                if(!dest.getParentFile().exists()){ //判断文件父目录是否存在
                    dest.getParentFile().mkdir();
                }
                try {
                    file.transferTo(dest); //保存文件
                    entity.setImgUrl("/car/" + fileName);
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (Tools.isEmpty(entity.getId())){
                entity.setId(Tools.getUUID());
                carService.save(entity);
            }else{
                carService.update(entity);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return REDIRECT+"/manager/carList";
    }

    @RequestMapping("/carDelete")
    public String travelRouteDelete(String id){
        if(Tools.notEmpty(id)){
            try {
                carService.deleteByid(id);
            }catch (Exception e){
                e.printStackTrace();
            }
        }
        return REDIRECT+"/manager/carList";
    }
}
