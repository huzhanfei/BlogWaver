package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity.enumeration
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 */
public enum LinkStatus implements BaseCodeEnum {

    /**
     * Link Status
     */
    DISABLED(0), ENABLED(1);

    private int code;

    LinkStatus(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}
