package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity.enumeration
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 */
public enum MessageStatus implements BaseCodeEnum {

    /**
     * Message Status
     */
    DRAFT(0), SENT(1), READ(3), UNREAD(4);

    private int code;

    MessageStatus(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}
