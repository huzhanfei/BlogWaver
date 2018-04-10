package cn.javacodes.blogwaver.repository;


import cn.javacodes.blogwaver.entity.ModuleMeta;
import org.springframework.stereotype.Repository;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.repository
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/01/20
 */
@Repository
public interface ModuleMetaRepository {

    int deleteByPrimaryKey(Long id);

    int insert(ModuleMeta record);

    int insertSelective(ModuleMeta record);

    ModuleMeta selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(ModuleMeta record);

    int updateByPrimaryKey(ModuleMeta record);
}