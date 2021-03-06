package com.test.admin.customer;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/customer/cuscouponinsert.do")
public class CusCouponInsert extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String cusseq = req.getParameter("seq");
		
		CustomerDAO dao = new CustomerDAO();
		ArrayList<CouponDTO> list = new ArrayList<CouponDTO>();
		list = dao.getInfoCoupon();
		
		req.setAttribute("list", list);
		req.setAttribute("cusseq", cusseq);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/admin/customer/cusCouponInsert.jsp");
		dispatcher.forward(req, resp);
	}
}	
