package Dao;

import Model.Product;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class DB_Product {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public int saveProduct(Product e){

        String query="insert into produs values('"+e.getCategorie()+"','"+e.getDescriere()+"','"+e.getPoza()+"','"+e.getPret()+"','"+e.getId()+"');";


        return jdbcTemplate.update(query);
    }
    public int updateProduct(Product e){
        String query="update produs set"+"categorie='"+e.getCategorie()+"',descriere='"+e.getDescriere()+"',poza='"+e.getPoza()+"',pret='"+e.getPret()+"',produsid='"+e.getId()+"';"
                +"where produsid="+e.getId();


        return jdbcTemplate.update(query);
    }
    public int deleteProduct(Product e){
        String query="delete from produs where id='"+e.getId()+"' ";
        return jdbcTemplate.update(query);
    }

    public List<Product> allProducts() {
        String sql="Select * FROM produs";
        List<Product> p = jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper(Product.class));
        return p;
    }

    public List<Product> Productscategory(String categ) {
        String sql="Select * FROM produs where categorie='"+categ+"';";
        List<Product> p = jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper(Product.class));
        return p;
    }



}
