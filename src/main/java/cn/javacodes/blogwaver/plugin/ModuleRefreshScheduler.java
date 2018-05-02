package cn.javacodes.blogwaver.plugin;

import com.alipay.jarslink.api.ModuleConfig;
import com.alipay.jarslink.api.impl.AbstractModuleRefreshScheduler;

import java.util.List;

/**
 * blogwaver
 * cn.javacodes.blogwaver.plugin
 * DESC
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018-04-26-0026
 */
public class ModuleRefreshScheduler extends AbstractModuleRefreshScheduler {

    private List<ModuleConfig> moduleConfigs;


    @Override
    public List<ModuleConfig> queryModuleConfigs() {
        return moduleConfigs;
    }

    public void setModuleConfigs(List<ModuleConfig> moduleConfigs) {
        this.moduleConfigs = moduleConfigs;
    }

}
