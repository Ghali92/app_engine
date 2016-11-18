package com.Controller;

import bl.ValidateUser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;


/**
 * Created by Ahmed Fadhel on 21-10-2016.
 */
public class Admin extends HttpServlet {

    private static Logger logger = Logger.getLogger(MyServlet.class.getName());

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        logger.log(Level.INFO, "doPost start...");
        logger.log(Level.INFO, "textarea: " + request.getParameter("textarea"));
        response.setContentType("text/html");

        String s = request.getParameter("textarea");

//        PrintWriter file = new PrintWriter("C:\\Users\\Ali\\Desktop\\Web app\\Technology1_startup_project\\web\\text.txt");
//        file.println(s);
//        file.close();

        ValidateUser validateUser = new ValidateUser();
        validateUser.postDate(s);

        List<String> list = validateUser.getData();
        HttpSession session = request.getSession();
        session.setAttribute("list", list);

        RequestDispatcher a = request.getRequestDispatcher("/posted.jsp");
        a.include(request, response);


    }

}
