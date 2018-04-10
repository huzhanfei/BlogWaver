package cn.javacodes.blogwaver.common.datatables;

/**
 * BlogWaver
 * cn.javacodes.blogwaver.core.common.datatables
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018-01-17
 */
public class Order {

    private int column;

    private String dir;

    public int getColumn() {
        return column;
    }

    public void setColumn(int column) {
        this.column = column;
    }

    public String getDir() {
        return dir;
    }

    public void setDir(String dir) {
        this.dir = dir;
    }

    @Override
    public String toString() {
        return "Order{" +
                "column=" + column +
                ", dir='" + dir + '\'' +
                '}';
    }
}
