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
@RequestMapping(value = "/admin/link")
public class LinkController {

    private static final Logger LOGGER = LoggerFactory.getLogger(LinkController.class);


    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String initLinkSettingPage(){
        LOGGER.info("initLinkSettingPage");
        return "admin-link-list";
    }

}
