package book.svc;

import book.vo.Book;
import dao.BookDAO;
import static db.JdbcUtil.*;
import java.sql.*;

public class BookDetailSvc {

	public Book getBook(String info_bk) {
		// TODO Auto-generated method stub
		Book book = null;
		Connection con = getConnection();
		BookDAO bookDAO = BookDAO.getInstance();
		bookDAO.setConnection(con);
		book = bookDAO.selectBook(info_bk);
		close(con);
		return book;
	}

}
