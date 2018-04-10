package cn.javacodes.blogwaver.repository;


import cn.javacodes.blogwaver.entity.PostMeta;
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
public interface PostMetaRepository {

    int deleteByPrimaryKey(Long id);

    int insert(PostMeta record);

    int insertSelective(PostMeta record);

    PostMeta selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(PostMeta record);

    int updateByPrimaryKey(PostMeta record);
}