package com.example.testspringboot.PatternTest;

import java.lang.reflect.Proxy;

public class runClass {
    public static void main(String[] args) {
        BuyHouse buyHouse = new BuyHouseimpl();
        MystaticProxy mystaticProxy = new MystaticProxy(buyHouse);
        mystaticProxy.buyHouse();
        System.out.println("--------------");
        BuyHouse proxyBuyHouse = (BuyHouse) Proxy.newProxyInstance(BuyHouse.class.getClassLoader(), new
                Class[]{BuyHouse.class}, new DynamicProxyHandler(buyHouse));
        proxyBuyHouse.buyHouse();
    }
}
