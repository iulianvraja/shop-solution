package Model;



public class User {
    private int varsta;
    private String email;
    private String parola;

    public User(){
        this.varsta=0;
        this.email="";
        this.parola="";
    }
    public User(String email,String parola,int varsta){
        this.varsta=varsta;
        this.parola=parola;
        this.email=email;
    }


    public String getParola() {
        return parola;
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setParola(String parola) {
        this.parola = parola;
    }

    public int getVarsta() {
        return varsta;
    }

    public void setVarsta(int varsta) {
        this.varsta = varsta;
    }
}
