package com.Controller;

import bl.*;
import dao.User;
import dao.UserDaoImpl;
import dao.Vagter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * Created by Ahmed Fadhel on 21-10-2016.
 */
public class Admin extends HttpServlet {

    private static Logger logger = Logger.getLogger(MyServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.log(Level.INFO, "doPost start...");

        logger.log(Level.INFO, "Username: " + request.getParameter("username"));
        logger.log(Level.INFO, "Password: " + request.getParameter("password"));
        logger.log(Level.INFO, "Checkbox: " + request.getParameter("confirmpassword"));
        logger.log(Level.INFO, "Checkbox: " + request.getParameter("role"));
        logger.log(Level.INFO, "Textarea: " + request.getParameter("textarea"));

        String s1 = request.getParameter("username");
        String s2 = request.getParameter("password");
        String s3 = request.getParameter("confirmpassword");
        String s4 = request.getParameter("role");

//Opretservlet -> Business -> doa -> Database. og så sender database tilbage samme vej step by step
        ValidateUser validateUser = new ValidateUser();
        if (validateUser.createUser(s1, s2, s3, s4) == false) {
            PrintWriter out = response.getWriter();
            out.print("    <script>\n" +
                    "    window.alert(\"ikke samme kode\");\n" +
                    "</script>");
            RequestDispatcher a = request.getRequestDispatcher("Opret.jsp");
            a.include(request, response);

        } else if (s1.equals("") || s2.equals("") || s3.equals("") || s4.equals("")) {
            PrintWriter out = response.getWriter();
            out.print("    <script>\n" +
                    "    window.alert(\"mangler at udfyld\");\n" +
                    "</script>");
            RequestDispatcher a = request.getRequestDispatcher("Opret.jsp");
            a.include(request, response);
        }  else {
            RequestDispatcher a = request.getRequestDispatcher("Opret.jsp");
            a.include(request, response);
        }



    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.log(Level.INFO, "The Query: " + request.getQueryString());
        logger.log(Level.INFO, "doGet start...");

        String[] array = request.getQueryString().split("&");
        for (int i = 0; i < array.length; i++) {
            logger.log(Level.INFO, "The array: " + array[i]);
        }


        if (request.getQueryString().equals("button1=opret")) {
            RequestDispatcher a = request.getRequestDispatcher("Opret.jsp");
            a.include(request, response);
        } else if (request.getQueryString().equals("button2=slet")) {
            ValidateUser validateUser = new ValidateUser();
            List<User> list = validateUser.getUsersForAdmin();
            HttpSession session = request.getSession();
            session.setAttribute("list", list);
            RequestDispatcher a = request.getRequestDispatcher("Slet.jsp");
            a.include(request, response);

        } else if (request.getQueryString().equals("button4=vis_skema")) {
            Vagt vagt = new VagtImpl();
            List<Vagter> list = vagt.fetchAll();
            HttpSession session = request.getSession();
            session.setAttribute("list", list);
            RequestDispatcher a = request.getRequestDispatcher("VagtSkema.jsp");
            a.include(request, response);
        } else if (array[0].equals("button3=opdater") || array[1].equals("opdater=opdater")) {
            ValidateUser validateUser = new ValidateUser();
            List<User> list = validateUser.getUsersForAdmin();
            HttpSession session = request.getSession();
            session.setAttribute("list", list);
            RequestDispatcher a = request.getRequestDispatcher("Opdater.jsp");
            a.include(request, response);

        } else if (array[1].equals("deleteButton=delete")) {
            logger.log(Level.INFO, "HEEEEESSSSSTTTT!!!!! " + request.getQueryString());
            UserDaoImpl sfsdh = new UserDaoImpl();
            String[] hafuif = array[0].split("=");
            sfsdh.delUser(hafuif[1]);

            ValidateUser validateUser = new ValidateUser();
            List<User> list = validateUser.getUsersForAdmin();
            HttpSession session = request.getSession();
            session.setAttribute("list", list);

            RequestDispatcher a = request.getRequestDispatcher("Slet.jsp");
            a.include(request, response);
        }
    }
}
