package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 */
public enum UserType implements BaseCodeEnum {

    /**
     * User Type
     */
    VISITOR(0), READER(1), WRITER(2), ADMINISTRATOR(3);

    private int code;

    UserType(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}