package com.Controller;

import bl.Myvalidate;
import bl.ValidateUser;
import dao.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.DatagramPacket;
import java.util.List;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by  on 19/08/16.
 * mvn appengine:update
 * mvn appengine:devserver
 */
public class MyServlet extends HttpServlet {

    private static Logger logger = Logger.getLogger(MyServlet.class.getName());

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.log(Level.INFO, "doPost start...");
        logger.log(Level.INFO, "Username: " + request.getParameter("username"));
        logger.log(Level.INFO, "Password: " + request.getParameter("password"));
        logger.log(Level.INFO, "Checkbox: " + request.getParameter("rememberMe"));

        //String name1 = "C:\Users\Ali\Desktop\Web app\Technology1_startup_project\web\login.txt";

        Myvalidate myvalidate = new ValidateUser();
        User user = myvalidate.validateUser(request.getParameter("username"), request.getParameter("password"));

        if (user != null) {
            if(user.getRole().equals("admin")){
                RequestDispatcher a = request.getRequestDispatcher("/Admin_Menu.jsp");
                a.include(request, response);


            } else {
                ValidateUser validateUser = new ValidateUser();
                List<String> list = validateUser.getData();
                HttpSession session = request.getSession();
                session.setAttribute("list", list);
                RequestDispatcher a = request.getRequestDispatcher("/user.jsp");
                a.include(request, response);
            }

        } else {
            System.out.println("Wrong error");
            RequestDispatcher a = request.getRequestDispatcher("/index.jsp");
            a.include(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.log(Level.INFO, "doGet started...");
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();
        String title = "Using POST Method to Read Form Data";
        String docType =
                "<!doctype html public \"-//w3c//dtd html 4.0 " +
                        "transitional//en\">\n";
        out.println(docType +
                "<html>\n" +
                "<head><title>" + title + "</title></head>\n" +
                "<body bgcolor=\"#f0f0f0\">\n" +
                "<h1 align=\"center\">" + title + "</h1>\n" +
                "<ul>\n" +
                "  <li><b>Username</b>: "
                + request.getParameter("username") + "\n" +
                "  <li><b>Password</b>: "
                + request.getParameter("password") + "\n" +
                "</ul>\n" +
                "</body></html>");
        logger.log(Level.INFO, "doGet ended...");
    }
}
