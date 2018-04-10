package cn.javacodes.blogwaver.entity;


import cn.javacodes.blogwaver.entity.enumeration.MessageStatus;

import java.util.Date;

/**
 * blogwaver
 * cn.javacodes.blogwaver.core.entity
 *
 * @author huzhanfei
 * @version 1.0
 * @since 2018/01/20
 */
public class Message {
    private Long id;

    private String sender;

    private String reciever;

    private Date time;

    private MessageStatus status;

    private String content;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getSender() {
        return sender;
    }

    public void setSender(String sender) {
        this.sender = sender == null ? null : sender.trim();
    }

    public String getReciever() {
        return reciever;
    }

    public void setReciever(String reciever) {
        this.reciever = reciever == null ? null : reciever.trim();
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public MessageStatus getStatus() {
        return status;
    }

    public void setStatus(MessageStatus status) {
        this.status = status;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }
}