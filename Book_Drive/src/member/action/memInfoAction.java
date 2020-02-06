package member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionForward;
import log.svc.LoginSvc;
import member.vo.Member;

public class memInfoAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward =null;
		HttpSession session = request.getSession();
		String info_id = request.getParameter("id");
		if((session.getAttribute("userID") == null)) { //세션 userID가 없을때 
			if(!((String)session.getAttribute("userID")).equals(request.getParameter("userID"))){
				//세션 userID와 파라미터 userI가 같지 않을때
				PrintWriter out = response.getWriter();
				out.print("<script>");
				out.print("alert('로그인하세요.');");
				out.print("location.href='loginForm.log';");
				out.print("</script>");
				}
		}	System.out.println("memInfoAction :	 "+info_id);
		LoginSvc memberInfo = new LoginSvc();
		Member member = memberInfo.memberLogin(info_id);
		request.setAttribute("member", member);
		request.setAttribute("pageIn", "/member/memInfo.jsp");
		forward = new ActionForward();
		forward.setPath("/template_sub.jsp");
		
		return forward;
	}

}
