package bl;

import dao.User;
import dao.UserDaoImpl;
import dao.UserInDb;
import dao.UserInDbImpl;

import java.util.List;

/**
 * Created by Ali on 28-10-2016.
 */
public class ValidateUser implements Myvalidate, OpretUser {

    private UserInDb userInDb;


    public ValidateUser() {
        //userInDb = new UserInDbImpl();
        userInDb = new UserDaoImpl();
    }

    @Override
    public User validateUser(String userName, String password) {
        return userInDb.fetchUser(userName, password);
    }

    @Override
    public List<String> getData() {
        return userInDb.fetchData();
    }

    @Override
    public void postDate(String tekst) {
        userInDb.postDate(tekst);
    }

    private boolean myValidatePw(String pw, String cPw) {
        if (pw.equals(cPw)) {
            return true;
        }
        return false;
    }

    @Override
    public boolean createUser(String username, String password, String confirmpassword, String role) {
        UserDaoImpl dg = new UserDaoImpl();
        if (myValidatePw(password, confirmpassword)) {
            dg.createUser(username, password, role);
            return true;
        }
        return false;
    }
}
