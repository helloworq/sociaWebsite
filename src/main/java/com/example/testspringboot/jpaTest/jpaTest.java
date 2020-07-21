package com.example.testspringboot.jpaTest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class jpaTest{
    @Autowired
    private UserRepository userRepository;
    /**
     * 添加用户
     */
    @Test
    public void testInsertUsers(){
        /*
        String nameString="安抚擦看来摩擦看来尺码按常理名称拉拉长达撒大苏打阿萨飒飒大苏打阿萨的地方孚日股份热风热风如果俄国给俄国";
        for (int i = 0; i < 98; i++) {
            UserEnity users = new UserEnity();
            String username="";
            for (int j = 0; j < 4; j++) {
                char usernameCharacter= nameString.toCharArray()[(int)(Math.random()*(nameString.length()))];
                username+=usernameCharacter;
            }
            System.out.println(username+"---"+i);
            users.setUsername(username);
            users.setEmail("666@qq.com");
            users.setPassword("66666");
            this.userRepository.save(users);
        }
         */
        System.out.println(this.userRepository.findByEmail("666@qq.com").size());
    }
}