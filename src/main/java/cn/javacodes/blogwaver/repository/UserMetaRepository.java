package cn.javacodes.blogwaver.repository;


import cn.javacodes.blogwaver.entity.UserMeta;
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
public interface UserMetaRepository {

    int deleteByPrimaryKey(Long id);

    int insert(UserMeta record);

    int insertSelective(UserMeta record);

    UserMeta selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(UserMeta record);

    int updateByPrimaryKey(UserMeta record);
}