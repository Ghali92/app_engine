package bl;

import dao.UserDaoImpl;
import dao.UserInDb;
import dao.Vagter;

import java.util.List;

/**
 * Created by Ali on 08-12-2016.
 */
public class VagtImpl implements Vagt {

    private UserInDb userInDb;

    public VagtImpl() {
        userInDb = new UserDaoImpl();
    }

    @Override
    public List<Vagter> fetchAll() {
        return userInDb.fetchVagter();
    }

}
