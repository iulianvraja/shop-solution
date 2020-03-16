package Controller;

import Dao.DB_Product;
import Dao.DB_user;
import Model.Product;
import Model.User;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController

public class LogginController extends DB_user{
    private static boolean logat=false;
private String nume;
private String parola;
    @RequestMapping("/login")
    public ModelAndView retloginpage(){

        ModelAndView x=new ModelAndView("submit");
        return x;
    }

    @RequestMapping(value="/submit")
    public ModelAndView getUserandPass(
            @RequestParam(name = "email") String email,
            @RequestParam(name = "password") String parola
    ) {
        System.out.println("s a facut initializarea");

        if(verifica(email,parola)){
            ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
            JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");

            DB_Product db=new DB_Product();
            db.setJdbcTemplate(jdbcTemplate);
            List<Product> arrProduse=db.allProducts();
            ModelAndView x=new ModelAndView("Userpage");
            x.addObject("lista",arrProduse);


            logat=true;
            return x;
        }

        else{
            logat=false;
            ModelAndView x=new ModelAndView("submit");
            return x;
            }
    }

private boolean verifica(String email, String Parola){
    ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
    JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");
    setJdbcTemplate(jdbcTemplate);
   System.out.println("pagina web:"+email+" "+Parola);
    List<User> u;
    u=allUsers();
    System.out.println(u.get(0).getEmail()+" "+u.get(0).getParola());
    for(User x:u){
        if(x.getEmail().equals(email) && x.getParola().equals(Parola))
            return true;
    }
    return false;
}

public static boolean getlogat(){
        return logat;
}

    @RequestMapping("/logout")
    public ModelAndView loggout(){
        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
        JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");

        DB_Product db=new DB_Product();
        db.setJdbcTemplate(jdbcTemplate);
        List<Product> arrProduse=db.allProducts();
        ModelAndView x=new ModelAndView("index");
        x.addObject("lista",arrProduse);
        logat=false;
        return x;
    }
}
