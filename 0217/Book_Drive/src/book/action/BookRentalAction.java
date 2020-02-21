package book.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import book.svc.BookRevSvc;

public class BookRentalAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		ActionForward forward = null;
		boolean isModifySuccess = false;
		
		if (session.getAttribute("userID") == null) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('대출하려면 로그인하세요');");
			out.print("location.href='loginForm.log';");
			out.print("</script>");
		}

		int memIndex = Integer.parseInt(request.getParameter("index"));
		String libCode = request.getParameter("libCode");
		String bookNum = request.getParameter("bookNum");
		String state = request.getParameter("state");
		String nowPage = request.getParameter("page");
		String search = request.getParameter("search");
		String value = request.getParameter("value");
		System.out.println("bookNum   :" +bookNum + "memIndex   :    " + memIndex +  " libCode  :" + libCode);
		BookRevSvc bookRevSvc = new BookRevSvc();
		isModifySuccess = bookRevSvc.insertState(memIndex, bookNum, libCode, state);
		
		if (!isModifySuccess) {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('대출실패');");
			out.print("history.back();");
			out.print("</script>");
		} else {
			response.setContentType("text/html;charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.print("<script>");
			out.print("alert('대출 되었습니다.');");
			out.print("location.href='bookInfo.bk?page=" + nowPage + "&bookNum=" + bookNum + "&search=" + search + "&value=" + value +"';");
			out.print("</script>");
//			session.setAttribute("userID", id);
//			request.setAttribute("page", nowPage);
		}
		return forward;
	}

}
