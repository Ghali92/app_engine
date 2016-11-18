package dao;

import java.sql.*;
import java.util.List;

/**
 * Created by Ali on 18-11-2016.
 */
public class UserDaoImpl implements UserInDb{


    //henter vores database, som vi har lavet.
    // JDBC driver name and database URL
    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/vagtskema";

    //  Database credentials
    static final String USER = "ali";
    static final String PASS = "@£$123abc";


    //vi bruger det til at snakke med mysql?
    private Connection conn = null;
    private Statement stmt = null;

    public UserDaoImpl() {


    }

    @Override
    //vi bruger denne metode til at hente info fra databasen. (specielt username og password til at logge ind)
    public User fetchUser(String username, String password) {
        //opretter en user objekt.
        User user = new User();
        boolean test = false;
        try{
            Class.forName(JDBC_DRIVER);
            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            //her forbinder vi til vores database.(med ali's kode)
            conn = DriverManager.getConnection(DB_URL,USER,PASS);

            //STEP 4: Execute a query
            System.out.println("Creating statement...");
            //her bruger vi denne kode til at lave statment til sql
            stmt = conn.createStatement();
            String sql;
            //sql = "SELECT * from login";
            //her bruger vi sql kode til at teste om user og pass
            sql = "SELECT * FROM login WHERE username = '" + username + "' AND password = '"+ password + "'";

            //denne kode bruges til at hente data fra databasen.
            ResultSet rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            //køre vi igennem vores kolonner i vores tabel. men tager fat i kun en user
            while(rs.next()){
                //Retrieve by column name
                user.setUsername(rs.getString("username"));
                user.setPw(rs.getString("password"));
                user.setRole(rs.getString("role"));
                test = true;

                //Display values
                System.out.print("username: " + user.getUsername());
                System.out.print(", password: " + user.getPw() );
                System.out.println(", role: " + user.getRole());

            }
            //STEP 6: Clean-up environment
            //her lukker vi alt forbindelse med vores database.
            rs.close();
            stmt.close();
            conn.close();
            return user;
        }catch(SQLException se){
            //Handle errors for JDBC
            se.printStackTrace();
        }catch(Exception e){
            //Handle errors for Class.forName
            e.printStackTrace();
        }finally{
            //finally block used to close resources
            try{
                if(stmt!=null)
                    stmt.close();
            }catch(SQLException se2){
            }// nothing we can do
            try{
                if(conn!=null)
                    conn.close();
            }catch(SQLException se){
                se.printStackTrace();
            }//end finally try
        }//end try
        System.out.println("Goodbye!");
       if (test){
           return user;
       }
        return null;
    }

    @Override
    public List<String> fetchData() {
        return null;
    }

    @Override
    public void postDate(String tekst) {

    }

}
