package cn.javacodes.blogwaver.i18n;

import cn.javacodes.blogwaver.controller.CommentController;
import org.apache.logging.log4j.util.Strings;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.core.io.Resource;
import org.springframework.util.ResourceUtils;

import java.io.IOException;


/**
 * blogwaver
 * cn.javacodes.blogwaver.base.i18n
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/13
 */
public class I18nManager implements InitializingBean {

    private static final Logger LOGGER = LoggerFactory.getLogger(CommentController.class);

    @Autowired
    private ApplicationContext applicationContext;

    @Autowired
    private ReloadableResourceBundleMessageSource messageSource;

    @Override
    public void afterPropertiesSet(){
        try {
            Resource[] resources = applicationContext.getResources("classpath*:i18n/*.properties");
            String[] basenames = new String[resources.length];
            for (int i = 0; i < resources.length; i++) {
                String fileName = resources[i].getFilename();
                if (Strings.isNotBlank(fileName)){
                    basenames[i] = ResourceUtils.CLASSPATH_URL_PREFIX + "i18n/" + fileName.substring(0, fileName.indexOf('_'));
                }
            }
            messageSource.setBasenames(basenames);
            LOGGER.info("Init i18n properties completed! Message source base names: {}", messageSource.getBasenameSet());
        } catch (IOException e) {
            LOGGER.error("Init i18n properties error: ", e);
        }
    }
}
