
package Controller;

import Dao.DB_Product;
import Model.Product;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 *
 * @author manoj.bardhan
 *
 */
@Controller


public class ControllerClass extends DB_Product {
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView home() {
   
        ModelAndView x=new ModelAndView("index");
        
        return x;
    }



    }

