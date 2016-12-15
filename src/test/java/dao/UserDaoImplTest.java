package dao;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

/**
 * Created by Ali on 14-12-2016.
 */
public class UserDaoImplTest {


    UserDaoImpl dao = new UserDaoImpl();


    @Test
    public void createUser() throws Exception {
        String username = "hey";
        String password = "123";
        String role = "user";
        dao.createUser(username, password, role);
        boolean prove = true;
        User teest =  dao.fetchUser(username, password);
        if(teest == null){
            prove = false;
        }
        assertEquals(true, prove);



    }
}