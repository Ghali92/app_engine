package dao;

/**
 * Created by Ali on 08-12-2016.
 */
public class Vagter {
    private String tid = "";
    private String mandag = "";
    private String tirsdag = "";
    private String onsdag = "";
    private String torsdag = "";
    private String fredag = "";

    public Vagter() {
    }

    public Vagter(String tid, String mandag, String tirsdag, String onsdag, String torsdag, String fredag) {
        this.tid = tid;
        this.mandag = mandag;
        this.tirsdag = tirsdag;
        this.onsdag = onsdag;
        this.torsdag = torsdag;
        this.fredag = fredag;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getMandag() {
        return mandag;
    }

    public void setMandag(String mandag) {
        this.mandag = mandag;
    }

    public String getTirsdag() {
        return tirsdag;
    }

    public void setTirsdag(String tirsdag) {
        this.tirsdag = tirsdag;
    }

    public String getOnsdag() {
        return onsdag;
    }

    public void setOnsdag(String onsdag) {
        this.onsdag = onsdag;
    }

    public String getTorsdag() {
        return torsdag;
    }

    public void setTorsdag(String torsdag) {
        this.torsdag = torsdag;
    }

    public String getFredag() {
        return fredag;
    }

    public void setFredag(String fredag) {
        this.fredag = fredag;
    }
}
