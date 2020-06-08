package com.example.testspringboot.PatternTest;


/**
 * 静态代理类很简单，就是实现被代理类的接口然后在调用被代理类的代码段的前后执行一些操作
 */
public class MystaticProxy implements BuyHouse{
    BuyHouse buyHouse;
    public MystaticProxy(BuyHouse buyHouse){
        this.buyHouse=buyHouse;
    }

    @Override
    public void buyHouse(){
        System.out.println("准备好钱...");
        buyHouse.buyHouse();
        System.out.println("买好了...");
    }
}
