package mail;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.vo.Member;

/**
 * Servlet implementation class MailSendServlet
 */
@WebServlet("")
public class Not_use_MailSendServlet extends HttpServlet {
	
	
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Not_use_MailSendServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		Member member = new Member();
		String id = request.getParameter("userID");
		String sender = "admin@bookDrive.com";
		String receiver = request.getParameter("userEmailId") + "@" + request.getParameter("userEmailAd");
		
		if (id == member.getId() && receiver == member.getEmail()) {
			String pw = randomPw.randomPass(10);
			member.setId(member.getId());
			member.setPassword(pw);
			member.setEmail(receiver);
			
			String subject = "[Book-Drive] 임시비밀번호 발송 메일입니다.";
			String content = "임시비밀번호 입니다. 로그인 후 변경하여 사용하세요. \r";
			content += "임시비밀번호 : " + pw + "\r";
			content += "<a href='#'>로그인</a>";
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			try {
				Properties properties = System.getProperties();
				properties.put("mail.smtp.starttls.enable", "true");
				properties.put("mail.smtp.host", "smtp.gmail.com");
				properties.put("mail.smtp.auth", "true");
				properties.put("mail.smtp.port", "587");
				GoogleAuthentication auth = new GoogleAuthentication();
				Session s = Session.getDefaultInstance(properties, auth);
				Message message = new MimeMessage(s);
				Address sender_address = new InternetAddress(sender);
				Address receiver_address = new InternetAddress(receiver);
				message.setHeader("content-type", "text/html;charset=utf-8");
				message.setFrom(sender_address);
				message.addRecipient(Message.RecipientType.TO, receiver_address);
				message.setSubject(subject);
				message.setContent(content, "text/html;charset=utf-8");
				message.setSentDate(new java.util.Date());
				Transport.send(message);

				out.print("<script>");
				out.print("alert('메일이 정상적으로 전송되었습니다.');");
				out.print("window.close();");
				out.print("</script>");

			} catch (Exception e) {
				out.print("<script>");
				out.print("alert('SMTP 서버가 잘못 설정되었거나, 서비스에 문제가 있습니다.');");
				out.print("history.back();");
				e.printStackTrace();
				out.print("</script>");
			}
		}
	}

}
