package com.admin.servlet;

import java.io.IOException;
import java.nio.file.Path;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.tomcat.jni.File;

import com.DAO.CltDAOImpl;
import com.DB.DBConnect;
import com.entity.BookDtls;

@WebServlet("/add_clts")
@MultipartConfig
public class CltsAdd extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String bookName = req.getParameter("bname");
			String author = req.getParameter("author");
			String price = req.getParameter("price");
			String categories = req.getParameter("btype");
			String status = req.getParameter("bstatus");
			Part part = req.getPart("bimg");
			String fileName = part.getSubmittedFileName();

			BookDtls b = new BookDtls(bookName, author, price, categories, status, fileName, "admin");
			CltDAOImpl dao = new CltDAOImpl(DBConnect.getConn());

			boolean f = dao.addBooks(b);

			HttpSession session = req.getSession();
			if (f) {
				String path = getServletContext().getRealPath("") + "book";

				java.io.File file =new java.io.File(path);
				part.write(path+java.io.File.separator+fileName);
				
				session.setAttribute("succMsg", "clother Add Successfully");
				resp.sendRedirect("admin/add_clts.jsp");
			} else {
				session.setAttribute("failedMsg", "Sothing wrong on Server");
				resp.sendRedirect("admin/add_clts.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
