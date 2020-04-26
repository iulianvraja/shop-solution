package Controller;

import Dao.DB_Product;
import Dao.OrderDao;
import Model.Order;
import Model.Product;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@RestController
public class OrderController extends OrderDao {
String categ;

    @RequestMapping("/gotoOrder")
        public ModelAndView retOrderpage(@RequestParam("inputid") String produse){
        ModelAndView x=new ModelAndView("Order");
        categ=produse;
        System.out.println("produse="+categ);
        return x;
        }

    @RequestMapping("/makeOrder")
    public ModelAndView saveOrder(@RequestParam("nume") String nume,
                                  @RequestParam("prenume") String prenume,
                                  @RequestParam("adr") String adresa,
                                  @RequestParam("nr") String nr){
        System.out.println("nume="+nume+" prenume="+prenume+"adr="+adresa+"nr="+nr);
        ModelAndView x=new ModelAndView("Userpage");

        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
        JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");
        setJdbcTemplate(jdbcTemplate);
        Order o=new Order(nume,prenume,adresa,nr);
        System.out.println("PozeleProduse="+categ);
        saveOrder(o,categ);

        DB_Product pd=new DB_Product();
        pd.setJdbcTemplate(jdbcTemplate);
        List<Product> arrProduse=pd.allProducts();
        x.addObject("lista",arrProduse);
        return x;
    }
}
