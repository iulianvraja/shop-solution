package Model;

public class Order {
    private String nume;
    private String prenume;
    private String adresa;
    private String nrtelefon;

    public Order(){}

    public Order(String nume, String prenume, String adresa, String nrtelefon) {
        this.nume = nume;
        this.prenume = prenume;
        this.adresa = adresa;
        this.nrtelefon = nrtelefon;

    }

    public String getNume() {
        return nume;
    }

    public void setNume(String nume) {
        this.nume = nume;
    }

    public String getPrenume() {
        return prenume;
    }

    public void setPrenume(String prenume) {
        this.prenume = prenume;
    }

    public String getAdresa() {
        return adresa;
    }

    public void setAdresa(String adresa) {
        this.adresa = adresa;
    }

    public String getNrtelefon() {
        return nrtelefon;
    }

    public void setNrtelefon(String nrtelefon) {
        this.nrtelefon = nrtelefon;
    }


}
