package cn.javacodes.blogwaver.entity;


import cn.javacodes.blogwaver.entity.enumeration.OptionCacheRequired;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/01/20
 */
public class Option {
    private Long id;

    private String name;

    private String value;

    private OptionCacheRequired cacheRequired;

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

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value == null ? null : value.trim();
    }

    public OptionCacheRequired getCacheRequired() {
        return cacheRequired;
    }

    public void setCacheRequired(OptionCacheRequired cacheRequired) {
        this.cacheRequired = cacheRequired;
    }
}