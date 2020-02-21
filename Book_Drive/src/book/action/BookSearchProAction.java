package book.action;


import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import book.svc.BookListSvc;
import book.vo.Book;

public class BookSearchProAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = null;

		String search = "";
		String value = "";
		
		if (request.getParameter("search") != null) {
			search = request.getParameter("search");
		}
		if (request.getParameter("value") != null) {
			value = request.getParameter("value");
		}

		int page = 1;
		int limit = 5;
		int limitPage = 3;

		if (request.getParameter("page") != null)
			page = Integer.parseInt(request.getParameter("page"));

		BookListSvc bookListSvc = new BookListSvc();
		int listCount = bookListSvc.getListCount(search, value);

		int maxPage = (int) ((double) listCount / limit + 0.95);
		int startPage = (((int) ((double) page / limitPage + 0.9)) - 1) * limitPage + 1;
		int endPage = startPage + limitPage - 1;
		if(endPage > maxPage)
			endPage = maxPage;
		PageInfo pageInfo = new PageInfo();
		pageInfo.setEndPage(endPage);
		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		request.setAttribute("pageInfo", pageInfo);
		
		ArrayList<Book> bookList = bookListSvc.getBookList(page, limit, search, value);
		request.setAttribute("bookList", bookList);
		request.setAttribute("search", search);
		request.setAttribute("value", value);
		
		System.out.println("search:" + search + "    value:" + value);
		request.setAttribute("pageIn", "book/bookList.jsp");		
		forward = new ActionForward();
		forward.setPath("template_sub.jsp");
		return forward;
	}

}
