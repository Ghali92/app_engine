package com.Controller;

import bl.ValidateUser;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by Ali on 24-11-2016.
 */

public class OpretServlet extends HttpServlet {

    private static Logger logger = Logger.getLogger(OpretServlet.class.getName());

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse resp) throws ServletException, IOException {
        logger.log(Level.INFO, "doPost start...");

        logger.log(Level.INFO, "Username: " + request.getParameter("username"));
        logger.log(Level.INFO, "Password: " + request.getParameter("password"));
        logger.log(Level.INFO, "Checkbox: " + request.getParameter("confirmpassword"));
        logger.log(Level.INFO, "Checkbox: " + request.getParameter("role"));

        String s1 = request.getParameter("username");
        String s2 = request.getParameter("password");
        String s3 = request.getParameter("confirmpassword");
        String s4 = request.getParameter("role");
//Opretservlet -> Business -> doa -> Database. og så sender database tilbage samme vej step by step
        ValidateUser validateUser = new ValidateUser();
        if (validateUser.createUser(s1, s2, s3, s4) == false) {
            PrintWriter out = resp.getWriter();
            out.print("    <script>\n" +
                    "    window.alert(\"ikke samme kode\");\n" +
                    "</script>");
            RequestDispatcher a = request.getRequestDispatcher("Opret.jsp");
            a.include(request, resp);
        }
    }
// AHMAD HUSK AT SNAKKE MED FAISAL
}
