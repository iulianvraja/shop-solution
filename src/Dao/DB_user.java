package Dao;

import Model.User;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class DB_user {
    private JdbcTemplate jdbcTemplate;

    public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }


    public int saveuser(User u){

        String query="insert into users values('"+u.getParola()+"','"+u.getVarsta()+"','"+u.getEmail()+ "');";

        return jdbcTemplate.update(query);
    }

    public List<User> allUsers() {
String sql="Select * FROM users";
        List<User> customers = jdbcTemplate.query(
                sql,
                new BeanPropertyRowMapper(User.class));
return customers;
    }
}
