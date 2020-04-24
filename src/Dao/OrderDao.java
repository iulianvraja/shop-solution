package Dao;

import Model.Order;
import Model.Product;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class OrderDao {

    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void saveOrder(Order e,String poza){
        String []spl;
                spl=poza.split(",");

                for(String i:spl){
                    int orderid=getidForOrder(i);
                    String query="insert into orders values('"+e.getNume()+"','"+e.getPrenume()+"','"+e.getAdresa()+"','"+e.getNrtelefon()+"','"+orderid+"');";
                    jdbcTemplate.update(query);
                }




    }

    public int getidForOrder(String s){
System.out.println("String ="+s);
        String sql="Select * FROM produs where poza="+"'"+s+"'";
        List<Product> ord = jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper(Product.class));
        System.out.println("Produsul gasit:"+ord.get(0).getId()+ord.get(0).getPoza());

        return ord.get(0).getId();
    }
}
