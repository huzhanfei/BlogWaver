package cn.javacodes.blogwaver.service.impl;


import cn.javacodes.blogwaver.entity.Link;
import cn.javacodes.blogwaver.repository.LinkRepository;
import cn.javacodes.blogwaver.service.LinkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.service.impl
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/1/21
 */
@Service
public class LinkServiceImpl implements LinkService {

    private final LinkRepository linkRepository;

    @Autowired
    public LinkServiceImpl(LinkRepository linkRepository) {
        this.linkRepository = linkRepository;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public int insertLink(Link link) {
        return linkRepository.insert(link);
    }

    @Override
    public Link selectById(Long id) {
        return linkRepository.selectByPrimaryKey(id);
    }
}
