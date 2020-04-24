package Controller;

import Dao.DB_Product;
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
public class ProductController  extends DB_Product {


    @RequestMapping(value="/laptopuri")
    public ModelAndView populeazaapartamente(){

        ModelAndView x;
        if(LogginController.getlogat()==true)
            x=new ModelAndView("Userpage");
        else
            x=new ModelAndView("index");


        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
        JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");
        setJdbcTemplate(jdbcTemplate);

        List<Product> arrProduse=Productscategory("Laptop&Gaming");
        for(Product i:arrProduse)
            System.out.println(i.getCategorie()+" ");
        x.addObject("lista",arrProduse);
        return x;
    }

    @RequestMapping(value="/electrocasnice")
    public ModelAndView populeazamasini(){
        ModelAndView x;
        if(LogginController.getlogat()==true)
            x=new ModelAndView("Userpage");
        else
            x=new ModelAndView("index");


        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
        JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");
        setJdbcTemplate(jdbcTemplate);

        List<Product> arrProduse=Productscategory("electrocasnice");
        x.addObject("lista",arrProduse);
        return x;
    }

    @RequestMapping(value="/AlteProduse")
    public ModelAndView populeazaalteproduse(){
        ModelAndView x;
        if(LogginController.getlogat()==true)
            x=new ModelAndView("Userpage");
        else
            x=new ModelAndView("index");


        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
        JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");
        setJdbcTemplate(jdbcTemplate);

        List<Product> arrProduse=Productscategory("AlteProduse");
        x.addObject("lista",arrProduse);
        return x;
    }


    @RequestMapping("/addproduct")
    public ModelAndView retaddprod(){
        ModelAndView x=new ModelAndView("gotoproduct");
        return x;

    }
    @RequestMapping("getinfoaboutproduct")
    public ModelAndView retPagewithProduct(@RequestParam("categorie") String categorie,
                                            @RequestParam("pret") String pret,
                                            @RequestParam("descriere") String descriere,
                                           @RequestParam("poza") String poza
                                           ){

        ApplicationContext ctx=new ClassPathXmlApplicationContext("beans.xml");
        JdbcTemplate jdbcTemplate=(JdbcTemplate)ctx.getBean("jdbcTemplate");
        setJdbcTemplate(jdbcTemplate);

        Product p=new Product(categorie,descriere,poza,pret,0);
        saveProduct(p);
        ModelAndView x;
    if(LogginController.getlogat()==true)
         x=new ModelAndView("Userpage");
    else
         x=new ModelAndView("index");
     List<Product> arrProduse=allProducts();
     x.addObject("lista",arrProduse);

return x;

    }

}
