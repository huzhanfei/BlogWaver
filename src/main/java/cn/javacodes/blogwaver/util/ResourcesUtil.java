package cn.javacodes.blogwaver.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.util
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/21
 */
public class ResourcesUtil {

    private static final Logger LOGGER = LoggerFactory.getLogger(ResourcesUtil.class);

    private static final ResourcePatternResolver RESOURCE_RESOLVER = new PathMatchingResourcePatternResolver(ResourcesUtil.class.getClassLoader());

    /**
     * Return the names of all classes in the package.
     *
     * @param packageName Full package name. You can use the wildcard like '*' or '**',
     *                    example: "cn.javacodes.blogwaver.**.entity".
     * @return List of the all classes names in the package.
     */
    public static List<String> listClass(String packageName) {
        List<String> classNames = new ArrayList<>();
        try {
            String locationPattern = packageName.replace(".", "/");
            String rootPath = locationPattern;
            if (locationPattern.contains("*")) {
                rootPath = rootPath.substring(0, rootPath.indexOf("*"));
            }
            Resource[] resources = RESOURCE_RESOLVER.getResources("classpath*:" + locationPattern + "/**/*.class");
            for (Resource resource : resources) {
                String resourcePath = resource.getURI().toString();
                resourcePath = resourcePath.substring(resourcePath.indexOf(rootPath));
                if (resourcePath.contains("!/")) {
                    resourcePath = resourcePath.substring(resourcePath.lastIndexOf("!/") + 2);
                }
                classNames.add(resourcePath.replace('/', '.').replaceAll("\\.class", ""));
            }
        } catch (IOException e) {
            LOGGER.error("Package name error: ", e);
        }
        return classNames;
    }

}
