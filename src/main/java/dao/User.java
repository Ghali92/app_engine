package dao;

import java.io.Serializable;

/**
 * Created by Ali on 04-11-2016.
 */
public class User implements Serializable {

    private String username;
    private String pw;
    private String role;

    public User(String username, String pw, String role) {
        this.username = username;
        this.pw = pw;
        this.role = role;
    }

    public User() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof User)) return false;

        User user = (User) o;

        if (getUsername() != null ? !getUsername().equals(user.getUsername()) : user.getUsername() != null)
            return false;
        if (getPw() != null ? !getPw().equals(user.getPw()) : user.getPw() != null) return false;
        return getRole() != null ? getRole().equals(user.getRole()) : user.getRole() == null;

    }

    @Override
    public int hashCode() {
        int result = getUsername() != null ? getUsername().hashCode() : 0;
        result = 31 * result + (getPw() != null ? getPw().hashCode() : 0);
        result = 31 * result + (getRole() != null ? getRole().hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "username='" + username + '\'' +
                ", pw='" + pw + '\'' +
                ", role='" + role + '\'' +
                '}';
    }
}
