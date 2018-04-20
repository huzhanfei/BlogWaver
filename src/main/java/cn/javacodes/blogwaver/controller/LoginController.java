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
 * @since 2018-04-20-0020
 */
@Controller
public class LoginController {

    private static final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

    @RequestMapping(value ="/login", method = RequestMethod.GET)
    public String initLoginPage() {
        LOGGER.info("initLoginPage");
        return "login";
    }

    @RequestMapping(value ="/register", method = RequestMethod.GET)
    public String initRegisterPage() {
        LOGGER.info("initRegisterPage");
        return "register";
    }

}
