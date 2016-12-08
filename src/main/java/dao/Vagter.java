package dao;

/**
 * Created by Ali on 08-12-2016.
 */
public class Vagter {

    private String tid ="";
    private String navn ="";

    public Vagter() {
    }

    public Vagter(String tid, String navn) {
        this.tid = tid;
        this.navn = navn;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getNavn() {
        return navn;
    }

    public void setNavn(String navn) {
        this.navn = navn;
    }
}
