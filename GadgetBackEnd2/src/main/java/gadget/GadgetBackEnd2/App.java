package gadget.GadgetBackEnd2;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.config.HibernateConfig;
import com.niit.daoimpl.UserDaoImpl;



/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
    	ApplicationContext c = new AnnotationConfigApplicationContext(HibernateConfig.class, UserDaoImpl.class);

    }
}
