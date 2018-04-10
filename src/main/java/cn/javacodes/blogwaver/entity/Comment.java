package cn.javacodes.blogwaver.entity;


import cn.javacodes.blogwaver.entity.enumeration.CommentStatus;

import java.util.Date;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/01/20
 */
public class Comment {
    private Long id;

    private String author;

    private String authorSite;

    private String authorEmail;

    private String authorIp;

    private String agent;

    private Date date;

    private Long parent;

    private CommentStatus status;

    private Long userId;

    private Long postId;

    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public String getAuthorSite() {
        return authorSite;
    }

    public void setAuthorSite(String authorSite) {
        this.authorSite = authorSite == null ? null : authorSite.trim();
    }

    public String getAuthorEmail() {
        return authorEmail;
    }

    public void setAuthorEmail(String authorEmail) {
        this.authorEmail = authorEmail == null ? null : authorEmail.trim();
    }

    public String getAuthorIp() {
        return authorIp;
    }

    public void setAuthorIp(String authorIp) {
        this.authorIp = authorIp == null ? null : authorIp.trim();
    }

    public String getAgent() {
        return agent;
    }

    public void setAgent(String agent) {
        this.agent = agent == null ? null : agent.trim();
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Long getParent() {
        return parent;
    }

    public void setParent(Long parent) {
        this.parent = parent;
    }

    public CommentStatus getStatus() {
        return status;
    }

    public void setStatus(CommentStatus status) {
        this.status = status;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getPostId() {
        return postId;
    }

    public void setPostId(Long postId) {
        this.postId = postId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}