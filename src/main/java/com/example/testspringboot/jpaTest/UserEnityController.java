package com.example.testspringboot.jpaTest;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Optional;
/*
@RestController
@RequestMapping("/users")
public class UserEnityController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping()
    public UserEnity saveUser(@RequestBody UserEnity user) {
        return userRepository.save(user);
    }


    @DeleteMapping("/{id}")
    public void deleteUser(@PathVariable("id") String userId) {
        userRepository.deleteById(userId);
    }

    @PutMapping("/{id}")
    public UserEnity updateUser(@PathVariable("id") String userId, @RequestBody UserEnity user) {
        user.setId(userId);
        return userRepository.saveAndFlush(user);
    }



    @GetMapping("/{id}")
    public UserEnity getUserInfo(@PathVariable("id") String userId) {
        Optional<UserEnity> optional = userRepository.findById(userId);
        return optional.orElseGet(UserEnity::new);
    }


    @GetMapping("/list")
    public Page<UserEnity> pageQuery(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        return userRepository.findAll(PageRequest.of(pageNum - 1, pageSize));
    }


}


 */