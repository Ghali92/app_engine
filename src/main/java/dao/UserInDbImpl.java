package dao;

import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * Created by Ali on 28-10-2016.
 */
public class UserInDbImpl implements UserInDb {
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
            Scanner input = new Scanner(new File("C:\\Users\\Ali\\Desktop\\Web app\\Technology1_startup_project\\web\\text.txt"));
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
        File log = new File("C:\\Users\\Ali\\Desktop\\Web app\\Technology1_startup_project\\web\\text.txt");

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
}
