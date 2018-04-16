package cn.javacodes.blogwaver.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * blogwaver
 * cn.javacodes.blogwaver.base.controller.admin
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2017/12/5
 */
@Controller
@RequestMapping(value = "/admin/article")
public class ArticleController {

    private static final Logger LOGGER = LoggerFactory.getLogger(ArticleController.class);

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String initArticleListPage() {
        LOGGER.info("initArticleListPage");
        return "admin-article-list";
    }

    @RequestMapping(value = "/create", method = RequestMethod.GET)
    public String initArticleCreatePage() {
        LOGGER.info("initArticleCreatePage");
        return "admin-article-create";
    }

    @RequestMapping(value = "/category", method = RequestMethod.GET)
    public String initArticleCategoryPage() {
        LOGGER.info("initArticleCategoryPage");
        return "admin-article-category";
    }

    @RequestMapping(value = "/tags", method = RequestMethod.GET)
    public String initArticleTagsPage() {
        LOGGER.info("initArticleTagsPage");
        return "admin-article-tags";
    }

    @RequestMapping(value = "/draft", method = RequestMethod.GET)
    public String initArticleDraftPage() {
        LOGGER.info("initArticleDraftPage");
        return "admin-article-draft";
    }


}
