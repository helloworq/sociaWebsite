package com.example.testspringboot.PatternTest;


import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/**
 * 从静态代理的实现代码可以看到，静态代理类需要写很多
 */
public class DynamicProxyHandler implements InvocationHandler {

    private Object object;

    public DynamicProxyHandler(final Object object) {
        this.object = object;
    }

    @Override
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        System.out.println("买房前准备");
        Object result = method.invoke(object, args);
        System.out.println("买房后装修");
        return result;
    }
}