package cn.javacodes.blogwaver.service;


import cn.javacodes.blogwaver.entity.Link;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.service
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/21
 */
public interface LinkService {

    int insertLink(Link link);

    Link selectById(Long id);


}
