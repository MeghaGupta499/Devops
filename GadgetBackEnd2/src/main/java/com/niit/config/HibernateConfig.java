package com.niit.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;



	@Configuration
	@EnableTransactionManagement
	@ComponentScan( "com.niit" )

	public class HibernateConfig {
	 
		@Autowired 
	    @Bean(name="sessionFactory")
	    public SessionFactory sessionFactory(DataSource dataSource) {
			System.out.println("inside SessionFactory");
	        LocalSessionFactoryBuilder sessionFactory = new LocalSessionFactoryBuilder(dataSource);
	        sessionFactory.addProperties(hibernateProperties());
	        sessionFactory.scanPackages("com.niit.model");
			return sessionFactory.buildSessionFactory();
	     }
	    
		
		@Autowired
	    @Bean(name="datasource")
	    public DataSource dataSource() {
			System.out.println("inside dataSource");
	        DriverManagerDataSource dataSource = new DriverManagerDataSource();
	        dataSource.setDriverClassName("org.h2.Driver");
	        dataSource.setUrl("jdbc:h2:tcp://localhost/~/MyGadget");
	        dataSource.setUsername("sa");
	        dataSource.setPassword("");
	        return dataSource;
	    }
	     
	    private Properties hibernateProperties() {
	    	System.out.println("inside hibernateProperties");
	        Properties properties = new Properties();
	        properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	        properties.put("hibernate.show_sql","true");
	        properties.put("hibernate.format_sql","true");
	        properties.put("hibernate.hbm2ddl.auto","update");
	        return properties;        
	    }
	     
	     
	    @Bean(name="transactionManager")
	    @Autowired
	    public HibernateTransactionManager transactionManager(SessionFactory s) {
	    	System.out.println("inside transactionManager");
	       HibernateTransactionManager txManager = new HibernateTransactionManager();
	       txManager.setSessionFactory(s);
	       return txManager;
	    }
	}

