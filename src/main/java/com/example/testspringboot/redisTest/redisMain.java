package com.example.testspringboot.redisTest;


import redis.clients.jedis.Jedis;

public class redisMain {
    public static void main(String[] args) {
        new redisOperation().redisTester();
    }
}
