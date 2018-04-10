package cn.javacodes.blogwaver.util;

import cn.javacodes.blogwaver.entity.enumeration.BaseCodeEnum;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.util
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/21
 */
public class CodeEnumUtil {

    /**
     * Get the Enum instance by enum code.
     * @param enumClass The Class Object of Enum.
     * @param code The code of Enum instance.
     * @param <E> Class Type.
     * @return
     */
    public static <E extends Enum<?> & BaseCodeEnum> E codeOf(Class<E> enumClass, int code) {
        E[] enumConstants = enumClass.getEnumConstants();
        for (E e : enumConstants) {
            if (e.getCode() == code) {
                return e;
            }
        }
        return null;
    }

}
