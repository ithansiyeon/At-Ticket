package com.test.admin.show;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/adminshowhall.do")
public class AdminShowHall extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		String region = req.getParameter("region");
		
		ShowDAO dao = new ShowDAO();
		ArrayList<HallDTO> list = dao.hist(region);
		
		/*
		 [
		 	{
		 		"seq" : "1",
		 		"name" : "dd",
		 		"addr" : "addr"
		 	}
		 ]
		 */
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		
		PrintWriter writer = resp.getWriter();
		
		String temp = "";
		
		temp += "[";
		
		for(HallDTO dto : list) {
			temp += "{";
			temp += String.format("\"seq\" : \"%s\",",dto.getSeq());
			temp += String.format("\"name\" : \"%s\",",dto.getName());
			temp += String.format("\"addr\" : \"%s\"",dto.getAddr());
			temp += "}";
			temp += ",";
		}
		
		temp = temp.substring(0,temp.length()-1);
		
		temp += "]";
		
		writer.print(temp);
		writer.close();
		
	}
	
	
}
