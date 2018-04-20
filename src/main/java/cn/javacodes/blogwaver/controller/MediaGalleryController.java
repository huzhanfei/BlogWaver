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
 * @since 2018-04-17-0017
 */
@Controller
@RequestMapping(value = "/admin/media")
public class MediaGalleryController {

    private static final Logger LOGGER = LoggerFactory.getLogger(MediaGalleryController.class);

    @RequestMapping(value ="/gallery", method = RequestMethod.GET)
    public String initGalleryPage() {
        LOGGER.info("initGalleryPage");
        return "admin-media-gallery";
    }

}
