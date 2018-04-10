package cn.javacodes.blogwaver.entity;

import cn.javacodes.blogwaver.entity.enumeration.ModuleStatus;
import cn.javacodes.blogwaver.entity.enumeration.ModuleType;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/01/20
 */
public class Module {
    private Long id;

    private String name;

    private ModuleType status;

    private ModuleStatus type;

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

    public ModuleType getStatus() {
        return status;
    }

    public void setStatus(ModuleType status) {
        this.status = status;
    }

    public ModuleStatus getType() {
        return type;
    }

    public void setType(ModuleStatus type) {
        this.type = type;
    }
}