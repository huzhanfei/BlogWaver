package cn.javacodes.blogwaver.config;

import cn.javacodes.blogwaver.i18n.I18nManager;
import cn.javacodes.blogwaver.plugin.ModuleRefreshScheduler;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter;
import com.alipay.jarslink.api.ModuleLoader;
import com.alipay.jarslink.api.ModuleManager;
import com.alipay.jarslink.api.impl.ModuleLoaderImpl;
import com.alipay.jarslink.api.impl.ModuleManagerImpl;
import org.springframework.boot.autoconfigure.http.HttpMessageConverters;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.http.converter.HttpMessageConverter;

/**
 * blogwaver
 * cn.javacodes.blogwaver.base.config
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2017/11/24
 */
@Configuration
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class AppContextConfiguration {

    @Bean
    public ReloadableResourceBundleMessageSource messageSource() {
        ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource();
        messageSource.setUseCodeAsDefaultMessage(true);
        return messageSource;
    }

    /**
     * 注入Bean: HttpMessageConverters，以支持fastjson
     *
     * @return HttpMessageConverters
     */
    @Bean
    public HttpMessageConverters fastJsonHttpMessageConverters() {
        FastJsonHttpMessageConverter fastConvert = new FastJsonHttpMessageConverter();
        FastJsonConfig fastJsonConfig = new FastJsonConfig();
        fastJsonConfig.setSerializerFeatures(SerializerFeature.PrettyFormat);
        fastConvert.setFastJsonConfig(fastJsonConfig);
        return new HttpMessageConverters((HttpMessageConverter<?>) fastConvert);
    }

    @Bean
    public I18nManager i18nManager() {
        return new I18nManager();
    }

    @Bean
    public ModuleManager moduleManager(){
        return new ModuleManagerImpl();
    }

    @Bean
    public ModuleLoader moduleLoader(){
        return new ModuleLoaderImpl();
    }

    @Bean
    public ModuleRefreshScheduler moduleRefreshScheduler(ModuleLoader moduleLoader, ModuleManager moduleManager){
        ModuleRefreshScheduler moduleRefreshScheduler = new ModuleRefreshScheduler();
        moduleRefreshScheduler.setModuleLoader(moduleLoader);
        moduleRefreshScheduler.setModuleManager(moduleManager);
        return moduleRefreshScheduler;
    }



}
