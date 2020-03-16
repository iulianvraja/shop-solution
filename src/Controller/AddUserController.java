package Controller;

import Dao.DB_user;
import Model.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AddUserController extends DB_user {
    @RequestMapping("/reg")
    public ModelAndView paginalogare(){
        ModelAndView regpage=new ModelAndView("register");
        return regpage;
    }

@RequestMapping(value = "/register")
    public ModelAndView addUser(@RequestParam("email") String email,
                          @RequestParam("password") String pass,
                          @RequestParam("varsta") String varsta

                          ){
        System.out.println(email+ " " +pass+ " "+varsta);
    ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
    JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");
    setJdbcTemplate(jdbcTemplate);
    saveuser(new User(email,pass,Integer.valueOf(varsta)));
    ModelAndView regpage=new ModelAndView("index");
    return regpage;
}
}
