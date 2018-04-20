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
@RequestMapping(value = "/admin/setting")
public class SettingController {


    private static final Logger LOGGER = LoggerFactory.getLogger(SettingController.class);

    @RequestMapping(value = "/site", method = RequestMethod.GET)
    public String initSiteSettingPage(){
        LOGGER.info("initSiteSettingPage");
        return "admin-setting-site";
    }

    @RequestMapping(value = "/system", method = RequestMethod.GET)
    public String initSystemSettingPage(){
        LOGGER.info("initSystemSettingPage");
        return "admin-setting-system";
    }


}
