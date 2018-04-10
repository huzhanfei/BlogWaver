package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity.enumeration
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 */
public enum CommentStatus implements BaseCodeEnum {

    /**
     * Comment Status
     */
    CLOSED(0), OPEN(1), REVIEWING(2);

    private int code;

    CommentStatus(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}
