package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity.enumeration
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 */
public enum ModuleType implements BaseCodeEnum {

    /**
     * Module Type
     */
    SYSTEM(0), PLUGIN(1);

    private int code;

    ModuleType(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}