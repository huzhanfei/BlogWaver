package cn.javacodes.blogwaver.config;


import cn.javacodes.blogwaver.interceptor.PjaxInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.HandlerAdapter;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.handler.SimpleServletHandlerAdapter;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.resource.GzipResourceResolver;
import org.springframework.web.servlet.resource.VersionResourceResolver;


/**
 * blogwaver
 * cn.javacodes.blogwaver.base.config
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2017/11/24
 */
@Configuration
@EnableWebMvc
public class WebConfiguration implements WebMvcConfigurer {

    @Bean
    public HandlerAdapter servletHandlerAdapter() {
        return new SimpleServletHandlerAdapter();
    }


    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/assets/**")
                .addResourceLocations("assets/")
                .resourceChain(true)
                .addResolver(new GzipResourceResolver())
                .addResolver(new VersionResourceResolver().addContentVersionStrategy("/**"));
    }


    @Bean(name = "multipartResolver")
    public CommonsMultipartResolver commonsMultipartResolver() {
        return new CommonsMultipartResolver();
    }


    @Bean
    public LocaleChangeInterceptor localeChangeInterceptor() {
        return new LocaleChangeInterceptor();
    }

    @Bean
    public SessionLocaleResolver sessionLocaleResolver() {
        return new SessionLocaleResolver();
    }


    @Bean
    public PjaxInterceptor pjaxInterceptor() {
        return new PjaxInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(localeChangeInterceptor());
        registry.addInterceptor(pjaxInterceptor());
    }


}
