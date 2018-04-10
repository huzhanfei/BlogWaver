package cn.javacodes.blogwaver.controller.advice;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.servlet.http.HttpServletRequest;

/**
 * blogwaver
 * cn.javacodes.blogwaver.base.advice
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/14
 */
@ControllerAdvice
public class BasePathControllerAdvice {

    @ModelAttribute("basePath")
    public String basePath(HttpServletRequest request){
        String scheme = request.getScheme();
        String serverName = request.getServerName();
        int port = request.getServerPort();
        String path = request.getContextPath();
        String basePath = scheme + "://" + serverName;
        if (("http".equalsIgnoreCase(scheme) && port == 80)
                || ("https".equalsIgnoreCase(scheme) && port == 443)) {
            basePath += path;
        } else {
            basePath += ":" + port + path;
        }
        return basePath;
    }


}
