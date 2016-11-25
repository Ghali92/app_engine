package dao;

import java.util.List;

/**
 * Created by Ali on 28-10-2016.
 */
public interface UserInDb {

    public User fetchUser(String username, String password);

    public List<String> fetchData();

    public void postDate(String tekst);

    public void createUser(String password, String username, String role);

    public List<User> getUsersForAdmin();

    public void delUser(String username);


}
