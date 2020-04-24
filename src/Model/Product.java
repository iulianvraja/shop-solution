package Model;

public class Product {
    private String categorie;
    private String descriere;
private String poza;
private String pret;
private int id;

public Product(){}

public Product(String categorie,String descriere,String poza,String pret,int id){
     this.categorie=categorie;
     this.descriere=descriere;
     this.poza=poza;
     this.pret=pret;
     this.id=id;
}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getDescriere() {
        return descriere;
    }

    public void setDescriere(String descriere) {
        this.descriere = descriere;
    }

    public String getPoza() {
        return poza;
    }

    public void setPoza(String poza) {
        this.poza = poza;
    }

    public String getPret() {
        return pret;
    }

    public void setPret(String pret) {
        this.pret = pret;
    }
}
