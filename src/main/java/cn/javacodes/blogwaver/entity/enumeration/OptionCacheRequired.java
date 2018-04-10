package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity.enumeration
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 */
public enum OptionCacheRequired implements BaseCodeEnum {

    /**
     * Option Cache Required
     */
    YES(0), NO(1);

    private int code;

    OptionCacheRequired(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}