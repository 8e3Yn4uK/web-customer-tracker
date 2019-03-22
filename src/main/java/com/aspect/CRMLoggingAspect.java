package com.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import java.util.logging.Logger;

/**
 * Created by 8e3Yn4uK on 19.03.2019
 */

@Aspect
@Component
public class CRMLoggingAspect {

    private Logger myLogger = Logger.getLogger(getClass().getName());

    @Before("com.aspect.PointcutExpressions.forAppFlow()")
    public void before(JoinPoint theJoinPoint) {
        String method = theJoinPoint.getSignature().toShortString();
        myLogger.info("======> In @Before Calling method " + method);
        Object[] args = theJoinPoint.getArgs();
        for (Object tempArg : args) {
            myLogger.info("=====> arguments: " + tempArg);
        }
    }

    @AfterReturning(pointcut = "com.aspect.PointcutExpressions.forAppFlow()",
            returning = "theResult")
    public void afterReturning(JoinPoint theJoinPoint, Object theResult) {
        String method = theJoinPoint.getSignature().toShortString();
        myLogger.info("======> In @AfterReturning from method " + method);
        myLogger.info("=====> result: " + theResult);
    }

}
