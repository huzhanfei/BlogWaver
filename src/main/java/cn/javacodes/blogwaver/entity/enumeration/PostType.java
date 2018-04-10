package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity.enumeration
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 */
public enum PostType implements BaseCodeEnum {

    /**
     * Post Type
     */
    ARTICLE(0), PAGE(1);

    private int code;

    PostType(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}