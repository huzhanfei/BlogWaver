package cn.javacodes.blogwaver.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * blogwaver
 * cn.javacodes.blogwaver.controller
 * DESC
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018-04-19-0019
 */
@Controller
@RequestMapping(value = "/admin/frontend")
public class FrontEndController {


    private static final Logger LOGGER = LoggerFactory.getLogger(FrontEndController.class);

    @RequestMapping(value = "/theme", method = RequestMethod.GET)
    public String initThemePage(){
        LOGGER.info("initThemePage");
        return "admin-frontend-theme";
    }

    @RequestMapping(value = "/nav", method = RequestMethod.GET)
    public String initNavPage(){
        LOGGER.info("initNavPage");
        return "admin-frontend-nav";
    }

}
