package com.aspect;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

/**
 * Created by 8e3Yn4uK on 19.03.2019
 */

@Aspect
public class PointcutExpressions {

    @Pointcut("execution(* com.controller.*.*(..))")
    private void forControllerPackage() {
    }

    @Pointcut("execution(* com.dao.*.*(..))")
    private void forDaoPackage() {
    }

    @Pointcut("execution(* com.service.*.*(..))")
    private void forServicePackage() {
    }

    @Pointcut("forControllerPackage() || forDaoPackage() || forServicePackage()")
    public void forAppFlow() {
    }
}
