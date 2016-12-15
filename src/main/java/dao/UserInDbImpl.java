package dao;

import java.io.*;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * Created by Ali on 28-10-2016.
 */
public class UserInDbImpl implements UserInDb {

    static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
    static final String DB_URL = "jdbc:mysql://localhost/vagtskema";

    //  Database credentials
    static final String USER = "root";
    static final String PASS = "123456ewq";

    private Connection conn = null;
    private Statement stmt = null;

    @Override
    public User fetchUser(String username, String password) {
        //TODO læs fra file for at validere
        User user = new User();
        //String name1 = "C:\\Users\\Ali\\Desktop\\Web app\\Technology1_startup_project\\web\\login.txt";
        Scanner input = null;



        /*try {
            input = new Scanner(new File(name1));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }

        while (input.hasNext()) {
            String name = input.next();
            String code = input.next();
            String num = input.next();

            if (username.equals(name) && password.equals(code)) {
                user.setUsername(name);
                user.setPw(code);
                if (num.equals("0")) {
                    user.setRole("admin");
                } else {
                    user.setRole("user");
                }
                return user;
            }
        }
*/
        return null;
    }

    @Override
    public List<String> fetchData() {
        List<String> list = new ArrayList<>();
        try {
            Scanner input = new Scanner(new File("C:\\Users\\Ali\\Desktop\\app_engine\\web\\text.txt"));
            while (input.hasNext()) {
                String s = input.nextLine();
                list.add(s);
            }
        } catch (FileNotFoundException ex) {
            ex.printStackTrace();
        }

        return list;
    }

    @Override
    public void postDate(String tekst) {
        File log = new File("C:\\Users\\Ali\\Desktop\\app_engine\\web\\text.txt");

        try{
            if(!log.exists()){
                System.out.println("We had to make a new file.");
                log.createNewFile();
            }

            FileWriter fileWriter = new FileWriter(log, true);

            BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
            bufferedWriter.write(tekst);
            bufferedWriter.close();

            System.out.println("Done");
        } catch(IOException e) {
            System.out.println("COULD NOT POSTDATA.");
        }

    }

    @Override
    public void createUser(String password, String username, String role) {

    }

    @Override
    public List<User> getUsersForAdmin() {
        List<User> users = new ArrayList<>();
        //opretter en user objekt.

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
            sql = "SELECT username, role FROM login";

            //denne kode bruges til at hente data fra databasen.
            ResultSet rs = stmt.executeQuery(sql);

            //STEP 5: Extract data from result set
            //køre vi igennem vores kolonner i vores tabel. men tager fat i kun en user
            while(rs.next()){
                //Retrieve by column name
                User user = new User();
                user.setUsername(rs.getString("username"));
               // user.setPw(rs.getString("password"));
                user.setRole(rs.getString("role"));
                test = true;
                users.add(user);

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
            //return user;
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
            return users;
        }
        return null;
    }

    @Override
    public void delUser(String username) {

    }

    @Override
    public List<Vagter> fetchVagter() {
        return null;
    }



}
