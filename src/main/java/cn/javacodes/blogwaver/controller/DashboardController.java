package cn.javacodes.blogwaver.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author mic-zhouc
 */
@Controller
@RequestMapping(value = {"/admin","/admin/dashboard"})
public class DashboardController {

    private static final Logger LOGGER = LoggerFactory.getLogger(DashboardController.class);

    @RequestMapping(method = RequestMethod.GET)
    public String initDashboardPage() {
        LOGGER.info("initDashboardPage");
        return "admin-index";
    }
}
