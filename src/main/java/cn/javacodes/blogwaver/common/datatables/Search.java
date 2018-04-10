package cn.javacodes.blogwaver.common.datatables;

/**
 * BlogWaver
 * cn.javacodes.blogwaver.core.common.datatables
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018-01-17
 */
public class Search {

    private String value;

    private boolean regex;

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public boolean isRegex() {
        return regex;
    }

    public void setRegex(boolean regex) {
        this.regex = regex;
    }

    @Override
    public String toString() {
        return "Search{" +
                "value='" + value + '\'' +
                ", regex=" + regex +
                '}';
    }
}
