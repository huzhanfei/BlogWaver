package cn.javacodes.blogwaver.entity;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/01/20
 */
public class Tag {
    private Long id;

    private String name;

    private Integer refCount;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Integer getRefCount() {
        return refCount;
    }

    public void setRefCount(Integer refCount) {
        this.refCount = refCount;
    }
}