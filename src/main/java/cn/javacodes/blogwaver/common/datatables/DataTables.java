package cn.javacodes.blogwaver.common.datatables;

import java.util.ArrayList;
import java.util.List;

/**
 * BlogWaver
 * cn.javacodes.blogwaver.core.common.datatables
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018-01-17
 */
public class DataTables {

    /**
     * 请求传递参数
     */
    private int draw = 0;

    private List<Columns> columns = new ArrayList<>();

    private List<Order> order = new ArrayList<>();

    private int start;

    private int length;

    private Search search = new Search();

    /**
     * 相应传递参数
     */
    private Object data;

    private long recordsTotal = 0;

    private long recordsFiltered = 0;

    public int getDraw() {
        return draw;
    }

    public void setDraw(int draw) {
        this.draw = draw;
    }

    public List<Columns> getColumns() {
        return columns;
    }

    public void setColumns(List<Columns> columns) {
        this.columns = columns;
    }

    public List<Order> getOrder() {
        return order;
    }

    public void setOrder(List<Order> order) {
        this.order = order;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public Search getSearch() {
        return search;
    }

    public void setSearch(Search search) {
        this.search = search;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public long getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(long recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public long getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(long recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }

    @Override
    public String toString() {
        return "DataTables{" +
                "draw=" + draw +
                ", columns=" + columns +
                ", order=" + order +
                ", start=" + start +
                ", length=" + length +
                ", search=" + search +
                ", data=" + data +
                ", recordsTotal=" + recordsTotal +
                ", recordsFiltered=" + recordsFiltered +
                '}';
    }
}

