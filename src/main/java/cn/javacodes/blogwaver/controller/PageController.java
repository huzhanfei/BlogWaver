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
 * @since 2018-04-16-0016
 */
@Controller
@RequestMapping(value = "/admin/page")
public class PageController {

    private static final Logger LOGGER = LoggerFactory.getLogger(PageController.class);

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String initPageListPage() {
        LOGGER.info("initPageListPage");
        return "admin-page-list";
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String initPageCreatePage() {
        LOGGER.info("initPageCreatePage");
        return "admin-page-create";
    }
}
