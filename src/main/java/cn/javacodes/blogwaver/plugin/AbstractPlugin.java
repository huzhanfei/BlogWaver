package cn.javacodes.blogwaver.plugin;

import com.alipay.jarslink.api.Action;

/**
 * blogwaver
 * cn.javacodes.blogwaver.plugin
 * DESC
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018-04-26-0026
 */
public abstract class AbstractPlugin implements Action<String, String> {

    /**
     * 插件执行入口
     * @param actionRequest 请求参数
     * @return 返回值
     */
    public abstract String doPlug(String actionRequest);

    @Override
    public String execute(String actionRequest){
       return doPlug(actionRequest);
    }


    @Override
    public String getActionName(){
        return "pluginAction";
    }

}
