package cn.javacodes.blogwaver;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.PropertySource;

/**
 * @author huzhanfei
 */
@SpringBootApplication
@PropertySource(name = "blogwaver.properties", value = "classpath:blogwaver.properties")
public class BlogWaverApplication {

	public static void main(String[] args) {
		SpringApplication.run(BlogWaverApplication.class, args);
	}

}
