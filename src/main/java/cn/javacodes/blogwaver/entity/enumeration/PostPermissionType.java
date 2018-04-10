package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity.enumeration
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 */
public enum PostPermissionType implements BaseCodeEnum {

    /**
     * Post Permission Type
     */
    PUBLIC(0), PRIVATE(1), PASSWORD(2);

    private int code;

    PostPermissionType(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}