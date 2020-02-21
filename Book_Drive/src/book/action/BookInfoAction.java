package book.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import book.svc.BookDetailSvc;
import book.vo.Book;

public class BookInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = null;
		String info_bk = request.getParameter("bookName");
		String page = request.getParameter("page");
	//	System.out.println(info_bk + "::::::" + page);
		BookDetailSvc bookDetailSvc = new BookDetailSvc();
		Book book = bookDetailSvc.getBook(info_bk);
		request.setAttribute("page", page);
		request.setAttribute("book", book);
		request.setAttribute("pageIn", "/book/bookInfo.jsp");
		forward = new ActionForward();
		forward.setPath("template_sub.jsp");	
		return forward;
	}

}
