package com.newlecture.web;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/hi")
public class Nana extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
	
		PrintWriter out = response.getWriter();
		
		String temp = request.getParameter("cnt");
		int cnt = 100;
		
		if(temp!=null && temp!="")
			cnt = Integer.parseInt(temp);
		
		
		for(int i=0 ; i<cnt ; i++)
		out.println((i+1)+": 안녕~ Servlet!!sss<br>");
	}
}
