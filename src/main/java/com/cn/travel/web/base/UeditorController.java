package com.cn.travel.web.base;

import com.baidu.ueditor.ActionEnter;
import com.google.common.collect.Lists;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.ConversionService;
import org.springframework.stereotype.Controller;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolationException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

@Controller
public class UeditorController {

    // /ueditor/jsp/config.json文件所在的父目录，上传文件默认根目录为config.json文件所在目录
    private String configJsonParentPath = ClassUtils.getDefaultClassLoader().getResource("").getPath() + "static/fileupload/ueditor";

    /**
     * UEditor初始化时会以get方式请求serverUrl地址，并且需要在action=config时返回UEditor配置文件信息
     * 描述：使用ueditor.jar包中的ActionEnter的话，就不需要自己再去实现其上传功能，因为ActionEnter已经帮我们实现了
     */
    @RequestMapping("ueditor")
    public void getEditorConfig(HttpServletRequest request, HttpServletResponse response, String action) {
        response.setContentType("application/json");
        try {
            String exec = new ActionEnter(request, configJsonParentPath).exec();
            if(action!=null && (action.equals("listfile") || action.equals("listimage"))) {
                exec = exec.replace(configJsonParentPath.substring(1), "/");
            }
            PrintWriter writer = response.getWriter();
            writer.write(exec);
            writer.flush();
            writer.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
