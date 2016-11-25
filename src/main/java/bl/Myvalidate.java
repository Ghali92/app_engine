package bl;

import dao.User;

import java.util.List;

/**
 * Created by Ali on 28-10-2016.
 */
public interface Myvalidate {
    public User validateUser(String userName, String password);
    public List<String> getData();
    public void postDate(String tekst);
    public List<User> getUsersForAdmin();
    public void delUser(String userName);
}
