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
@RequestMapping(value = "/admin/plugin")
public class PluginController {


    private static final Logger LOGGER = LoggerFactory.getLogger(PluginController.class);

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String initPluginListPage(){
        LOGGER.info("initPluginListPage");
        return "admin-plugin-list";
    }

    @RequestMapping(value = "/install", method = RequestMethod.GET)
    public String initPluginInstallPage(){
        LOGGER.info("initPluginInstallPage");
        return "admin-plugin-install";
    }

}
