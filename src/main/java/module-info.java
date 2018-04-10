module blogwaver {

    requires java.sql;
    requires javax.servlet.api;

    requires spring.core;
    requires spring.beans;
    requires spring.web;
    requires spring.webmvc;
    requires spring.context;
    requires spring.tx;
    requires spring.jdbc;
    requires spring.boot;
    requires spring.boot.autoconfigure;

    requires undertow.core;
    requires mybatis;
    requires mybatis.spring;
    requires com.zaxxer.hikari;

    requires slf4j.api;
    requires fastjson;
    requires org.apache.logging.log4j;
    requires freemarker.java8;
}