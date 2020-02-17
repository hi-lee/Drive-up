package book.svc;

import java.sql.*;
import static db.JdbcUtil.*;
import dao.BookDAO;

public class BookReturnSvc {

	public boolean returnState(int memIndex, String bookNum, String libCode, String state) {
		// TODO Auto-generated method stub
		boolean isModifySuccess = false;
		Connection con = getConnection();
		BookDAO bookDAO = BookDAO.getInstance();
		bookDAO.setConnection(con);
		int updateCount = bookDAO.returnState(memIndex, bookNum, libCode, state);
		
		if(updateCount > 0) {
			commit(con);
			isModifySuccess = true;
		} else {
			rollback(con);
		}
		close(con);
		return isModifySuccess;
	}

}
