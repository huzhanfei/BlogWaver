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
@RequestMapping(value = "/admin/comment")

public class CommentController {

    private static final Logger LOGGER = LoggerFactory.getLogger(CommentController.class);

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String initCommentInboxPage() {
        LOGGER.info("initCommentListPage");
        return "admin-comment-list";
    }
}
