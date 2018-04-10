package cn.javacodes.blogwaver.interceptor;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * blogwaver
 * cn.javacodes.blogwaver.base.interceptor
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2017/12/5
 */
public class PjaxInterceptor extends HandlerInterceptorAdapter {

    private static final Logger LOGGER = LoggerFactory.getLogger(PjaxInterceptor.class);

    @Value("${X-PJAX-Version}")
    private String pjaxVersion;

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        if (modelAndView != null) {
            boolean isPjax = Boolean.parseBoolean(request.getHeader("X-PJAX"));
            ModelMap model = modelAndView.getModelMap();
            model.addAttribute("isPjax", isPjax);
            if (isPjax) {
                response.setHeader("X-PJAX-Version", pjaxVersion);
                LOGGER.info("PJAX request: " + request.getRequestURL());
            }
        }
    }

}
