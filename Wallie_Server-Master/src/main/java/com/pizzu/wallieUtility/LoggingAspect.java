package com.pizzu.wallieUtility;



import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;


@Component
@Aspect
public class LoggingAspect {

	@AfterThrowing(pointcut = "execution(* com.pizzu.wallieDao.*Impl.*(..))", throwing = "exception")	
	public void logExceptionFromDAO(Exception exception) throws Exception {
		System.out.println("in logging dao");
		exception.printStackTrace();
		log(exception);
	}
	
	@AfterThrowing(pointcut = "execution(* com.pizzu.wallieService.*Impl.*(..))", throwing = "exception")	
	public void logExceptionFromService(Exception exception) throws Exception {
		System.out.println("in logging Service");
		exception.printStackTrace();
			log(exception);
	}

	
	private void log(Exception exception) {
		Logger logger = LogManager.getLogger(this.getClass());
		
		if(exception.getMessage()!=null && 
				(exception.getMessage().contains("Service") || exception.getMessage().contains("Validator"))){
			logger.error(exception.getMessage());
		}
		else{
			logger.error(exception.getMessage(), exception);
		}
	}

}
