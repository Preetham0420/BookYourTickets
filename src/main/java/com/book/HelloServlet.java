package com.book;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
@WebServlet("/Hi")
public class HelloServlet extends HttpServlet {
    public HelloServlet(){

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            Connection con=DatabaseConnection.getConnection();
            resp.getWriter().println("Bye");
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
}
