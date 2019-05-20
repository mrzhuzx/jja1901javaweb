package com.javaweb.tzhu.appcomm;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

public class BeansUtil {
	
	
	static ApplicationContext  ac;

	/**
	 * //静态块是类级别的：类加载时就执行
	 */
	static{
		String[] xml={"springjdbc.xml"};
		ac=new  ClassPathXmlApplicationContext(xml);
	//	ac=new FileSystemXmlApplicationContext("springjdbc.xml");

	
	}
	

	public static <T> T getBean(String beanid,Class<T>  tclass){
		
		return ac.getBean(beanid, tclass);
		
		
		
		
	}

	
	public static void main(String[] args) {

		String s[] = System.getProperty("java.class.path").split(";");
		System.out.println("s:"+s);
		for (String string : s) {
			System.out.println(string);
		}



			String names[]= ac.getBeanDefinitionNames();
		
		for (String beanid : names) {
			System.out.println(beanid);
		}
		
		
		
		
	
		
		
		
		
		
		
	}

}
