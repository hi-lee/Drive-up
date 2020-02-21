package dao;

import static db.JdbcUtil.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import book.vo.Book;

public class BookDAO {
	Connection con;
	private static BookDAO bookDAO;
	
	public static BookDAO getInstance() {
		// TODO Auto-generated method stub
		if(bookDAO == null)
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
		System.out.println("dao selectCount   :::  " + value);
		String sql = "select count(*) from bookInfo where " + search + " like ?";
		
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, "%" + value + "%");
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
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
		int startrow = (page -1)*limit;
		
		if(search.equals("bookName")) {
			book_list_sql += "bookName like ? ";
		} else if(search.equals("bookWriter")) {
			book_list_sql += "bookWriter like ? ";
		} else if(search.equals("bookPub")) {
			book_list_sql += "bookPub like ? ";
		} else if(search.equals("ISBN")) {
			book_list_sql += "ISBN like ? ";
		}
		book_list_sql += "order by bookRegDate asc limit ?,?;";

		
		try {
			pstmt = con.prepareStatement(book_list_sql);
			pstmt.setString(1, "%" + value + "%");
			pstmt.setInt(2, startrow);
			pstmt.setInt(3, limit);
			rs = pstmt.executeQuery();
			System.out.println(book_list_sql);
			while(rs.next()) {
				book = new Book();
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

	public Book selectBook(String info_bk) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Book book = null;
		String select_book_sql = "select * from bookInfo where bookName = ?";
		try {
			pstmt = con.prepareStatement(select_book_sql);
			pstmt.setString(1, info_bk);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				book = new Book();
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

}
