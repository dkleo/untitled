package com.dkleo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;


@Controller
public class NumbersApp extends HttpServlet {

    @RequestMapping("/numbers")
    public void doGet(HttpServletRequest request, HttpServletResponse response)  throws IOException {
        PrintWriter out = response.getWriter();
        Random r = new Random();
        int low = 1000;
        int high = 100000;
        int result = r.nextInt(high-low) + low;
        out.println("{\"number\":"+ String.valueOf(result) +"}");
    }
}