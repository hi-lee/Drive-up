package dao;

import static db.JdbcUtil.close;
import static db.JdbcUtil.commit;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import book.vo.Book;
import book.vo.Cart;
import book.vo.RentalIdv;

public class BookDAO {
	Connection con;
	private static BookDAO bookDAO;

	public static BookDAO getInstance() {
		// TODO Auto-generated method stub
		if (bookDAO == null)
			bookDAO = new BookDAO();
		return bookDAO;
	}

	public void setConnection(Connection con) {
		// TODO Auto-generated method stub
		this.con = con;
	}

	public int selectCount(String search, String value) {
		// TODO Auto-generated method stub
		int listCount = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		// System.out.println("dao selectCount ::: " + value);
		String sql = "select count(*) from bookInfo where " + search + " like ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + value + "%");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				listCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("bookList err    :::   " + e);
		} finally {
			close(rs);
			close(pstmt);
		}
		return listCount;
	}

	public ArrayList<Book> selectBookList(int page, int limit, String search, String value) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String book_list_sql = "select * from bookInfo where ";
		ArrayList<Book> bookList = new ArrayList<Book>();
		Book book = null;
		int startrow = (page - 1) * limit;

		if (search.equals("bookName")) {
			book_list_sql += "bookName like ? ";
		} else if (search.equals("bookWriter")) {
			book_list_sql += "bookWriter like ? ";
		} else if (search.equals("bookPub")) {
			book_list_sql += "bookPub like ? ";
		} else if (search.equals("ISBN")) {
			book_list_sql += "ISBN like ? ";
		}
		book_list_sql += "order by bookRegDate asc limit ?,?;";

		try {
			pstmt = con.prepareStatement(book_list_sql);
			pstmt.setString(1, "%" + value + "%");
			pstmt.setInt(2, startrow);
			pstmt.setInt(3, limit);
			rs = pstmt.executeQuery();
			// System.out.println(book_list_sql);
			while (rs.next()) {
				book = new Book();
				book.setBookNum(rs.getString("bookNum"));
				book.setLibCode(rs.getString("libCode"));
				book.setBookName(rs.getString("bookName"));
				book.setBookWriter(rs.getString("bookWriter"));
				book.setBookPub(rs.getString("bookPub"));
				book.setBookPubDate(rs.getString("bookPubDate"));
				book.setISBN(rs.getString("ISBN"));
				book.setBookRegDate(rs.getString("bookRegDate"));
				book.setBookState(rs.getString("bookState"));
				bookList.add(book);
			}
		} catch (SQLException e) {
			System.out.println("getBookList err   :::   " + e);
		} finally {
			close(rs);
			close(pstmt);
		}

		return bookList;
	}

	public Book selectBook(String bookNum) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Book book = null;
		System.out.println("bookNUM:" + bookNum);
		String select_book_sql = "select * from bookInfo where bookNum = ?";
		try {
			System.out.println(select_book_sql);
			pstmt = con.prepareStatement(select_book_sql);
			pstmt.setString(1, bookNum);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				book = new Book();
				book.setBookNum(rs.getString("bookNum"));
				book.setLibCode(rs.getString("libCode"));
				book.setBookName(rs.getString("bookName"));
				book.setBookWriter(rs.getString("bookWriter"));
				book.setBookPub(rs.getString("bookPub"));
				book.setISBN(rs.getString("ISBN"));
				book.setBookPubDate(rs.getString("bookPubDate"));
				book.setBookRegDate(rs.getString("bookRegDate"));
				book.setBookState(rs.getString("bookState"));
			}
		} catch (SQLException e) {
			System.out.println("selectBook err   :::  " + e);
		} finally {
			close(rs);
			close(pstmt);
		}
		return book;
	}

	public RentalIdv getRentalIdv(String bookNum) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		RentalIdv rentalIdv = null;
		try {
			pstmt = con.prepareStatement("select * from rentalIdv where bookNum = ?");
			pstmt.setString(1, bookNum);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				rentalIdv = new RentalIdv();
				rentalIdv.setMemIndex(rs.getInt("memIndex"));
				rentalIdv.setBookNum(rs.getInt("bookNum"));
				rentalIdv.setRenRevDate(rs.getString("renRevDate"));
				rentalIdv.setRenRevInvDate(rs.getString("renRevInvDate"));
				rentalIdv.setRenBrwDate(rs.getString("renBrwDate"));
				rentalIdv.setRenBrwInvDate(rs.getString("renBrwInvDate"));
				rentalIdv.setRenOutRev(rs.getString("renOutRev"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("getRental Err : " + e);
		} finally {
			close(pstmt);
			close(rs);
		}
		return rentalIdv;
	}

	public int insertState(int memIndex, String bookNum, String libCode, String state) {
		// TODO Auto-generated method stub
		int insertCount = 0;
		PreparedStatement pstmt = null;
		String state_sql = "update bookInfo set bookState = ? where bookNum = ?";
		String rentalIdv_sql = "";

		try {
			pstmt = con.prepareStatement(state_sql);
//				state:0 대출가능, 1:대출중, 2:예약중  
//				state:0인 상태에서 쿼리실행하면 state는 1로 변경 
			if (state.equals("0")) {
				pstmt.setString(1, "1");
			} else if (state.equals("1")) {
				pstmt.setString(1, "2");
			}
			pstmt.setString(2, bookNum);
			int updateCount = pstmt.executeUpdate();

			if (updateCount > 0)
				commit(con);

			rentalIdv_sql = "insert into rentalIdv (renIdvNum, memIndex, bookNum, libCode, renIdvDelFlag, renFlag, ";
			if (state.equals("0")) {
//				state:0 인 상태에서 쿼리 실행시 'brw', 대출날짜, 대출만료일, 1인 상태: 'rev', 예약날짜, 예약 만료일 
				rentalIdv_sql += " renBrwDate, renBrwInvDate) ";
			} else if (state.equals("1")) {
				rentalIdv_sql += " renRevDate, renRevInvDate) ";
			}
			rentalIdv_sql += " values (0, ?, ?, ?, 0, ";
			if (state.equals("0")) {
				rentalIdv_sql += " 'brw', now(), (now()+INTERVAL 14 DAY))";
			} else if (state.equals("1")) {
				rentalIdv_sql += " 'rev', now(), (now()+INTERVAL 1 DAY))";
			}

			pstmt = con.prepareStatement(rentalIdv_sql);
			pstmt.setInt(1, memIndex);
			pstmt.setString(2, bookNum);
			pstmt.setString(3, libCode);
			insertCount = pstmt.executeUpdate();
			System.out.println("rentalIdv_sql    : " + rentalIdv_sql);

		} catch (SQLException e) {
			System.out.println("insertState err  :   " + e);
		} finally {
			close(pstmt);
		}
		return insertCount;
	}

	public int returnState(int memIndex, String bookNum, String libCode, String state) {
		// TODO Auto-generated method stub
		int updateCount = 0;
		PreparedStatement pstmt = null;
		String return_sql = "update bookInfo set bookState = 0 where bookNum = ?";
		try {
			pstmt = con.prepareStatement(return_sql);
			pstmt.setString(1, bookNum);
			int updateRental = pstmt.executeUpdate();

			if (updateRental > 0) {
				pstmt = con.prepareStatement(
						"update rentalIdv set renReturnDate = now(), renIdvDelFlag = 1 where bookNum = ?");
				pstmt.setString(1, bookNum);
				updateCount = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			System.out.println("return err :  " + e);
		} finally {
			close(pstmt);
		}
		return updateCount;
	}

	public ArrayList<RentalIdv> getRentalList(int memIndex) {
		// TODO Auto-generated method stub
		ArrayList<RentalIdv> rentalList = new ArrayList<RentalIdv>();
		RentalIdv rentalIdv = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String rental_sql = "select * from rentalIdv left join bookInfo on rentalIdv.bookNum = bookInfo.bookNum where memIndex = ? ";
		try {
			pstmt = con.prepareStatement(rental_sql);
			pstmt.setInt(1, memIndex);
			rs = pstmt.executeQuery();
//			System.out.println(rental_sql);
			while (rs.next()) {
				rentalIdv = new RentalIdv();
				rentalIdv.setMemIndex(rs.getInt("memIndex"));
				rentalIdv.setBookNum(rs.getInt("bookNum"));
				rentalIdv.setBookName(rs.getString("bookName"));
				rentalIdv.setLibCode(rs.getString("libCode"));
				rentalIdv.setRenFlag(rs.getString("renFlag"));
				rentalIdv.setRenBrwDate(rs.getString("renBrwDate"));
				rentalIdv.setRenBrwInvDate(rs.getString("renBrwInvDate"));
				rentalIdv.setRenRevDate(rs.getString("renRevDate"));
				rentalIdv.setRenRevInvDate(rs.getString("renRevInvDate"));
				rentalIdv.setRenReturnDate(rs.getString("renReturnDate"));
				rentalIdv.setRenIdvDelFlag(rs.getString("renIdvDelFlag"));
				rentalList.add(rentalIdv);
			}
		} catch (SQLException e) {
			System.out.println("getRentalList err : " + e);
		} finally {
			close(rs);
			close(pstmt);
		}
		return rentalList;
	}

	public int revCancelState(int memIndex, String bookNum) {
		// TODO Auto-generated method stub
		int updateCount = 0;
		PreparedStatement pstmt = null;
		String cancel_sql = "update bookInfo set bookState = 1 where bookNum = ?";
		System.out.println("bookNum   : " + bookNum + "cancel_sql :     " + cancel_sql);
		try {
			pstmt = con.prepareStatement(cancel_sql);
			pstmt.setString(1, bookNum);
			updateCount = pstmt.executeUpdate();

			if (updateCount > 0) {
				pstmt = con
						.prepareStatement("update rentalIdv set renIdvDelFlag = 1, renFlag = 'brw' where bookNum = ?");
				pstmt.setString(1, bookNum);
				pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			System.out.println("revCancel err  : " + e);
		} finally {
			close(con);
		}
		return updateCount;
	}

	public int addCart(String memIndex, Book bookCart) {
		PreparedStatement pstmt = null;
		int insertCount = 0;
		String addCart_sql = "insert into cart values(0, ?, ?, ?, 0)";
		System.out.println(bookCart.getBookNum());
		try {
			pstmt = con.prepareStatement(addCart_sql);
			pstmt.setString(1, bookCart.getBookNum());
			pstmt.setString(2, bookCart.getLibCode());
			pstmt.setString(3, memIndex);
			insertCount = pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("addCart Err  :::  " + e);
		} finally {
			close(pstmt);
		}
		return insertCount;
	}

	public ArrayList<Cart> selectCartList(String memIndex) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Cart> cartList = new ArrayList<Cart>();
		Cart cart = null;
		try {
			pstmt = con.prepareStatement(
					"select * from cart left join bookInfo on cart.bookNum = bookInfo.bookNum where memIndex = ?");
			pstmt.setString(1, memIndex);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				cart = new Cart();
				cart.setCartNum(rs.getString("cartNum"));
				cart.setBookNum(rs.getString("bookNum"));
				cart.setMemIndex(rs.getString("memIndex"));
				cart.setLibCode(rs.getString("libCode"));
				cart.setCartDelFlag(rs.getString("cartDelFlag"));
				cart.setBookName(rs.getString("bookName"));
				cart.setBookWriter(rs.getString("bookWriter"));
				cart.setISBN(rs.getString("ISBN"));
				cart.setBookPub(rs.getString("bookPub"));
				cart.setBookPubDate(rs.getString("bookPubDate"));
				cartList.add(cart);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("selectCartList err :::  " + e);
		} finally {
			close(pstmt);
			close(rs);
		}
		return cartList;
	}

	public int delCartList(String memIndex, String[] cartNum) {
		// TODO Auto-generated method stub
		int delCount = 0;
		PreparedStatement pstmt = null;
		String delCart_sql = "delete from cart where memIndex = ? and cartNum = ? ";
	
		try {
			pstmt = con.prepareStatement(delCart_sql);
			pstmt.setString(1, memIndex);
			if (cartNum != null) {
				for(int i = 0; i<cartNum.length; i++) {
					pstmt.setString(2, cartNum[i]);
					delCount = pstmt.executeUpdate();
				}
			}
			System.out.println("delCart_sql:  " + delCart_sql);
		} catch (SQLException e) {
			System.out.println("delCart Err ::: " + e);
		}
		return delCount;
	}
}
