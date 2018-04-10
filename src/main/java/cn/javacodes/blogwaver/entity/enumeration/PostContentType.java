package cn.javacodes.blogwaver.entity.enumeration;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity.enumeration
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/20
 * TODO 待删除
 */
public enum PostContentType implements BaseCodeEnum {

    YES(0), NO(1);

    private int code;

    PostContentType(int code) {
        this.code = code;
    }

    @Override
    public int getCode() {
        return code;
    }
}