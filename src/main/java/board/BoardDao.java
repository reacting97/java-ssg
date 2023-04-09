package board;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.DBConnect;

public class BoardDao {
	private DBConnect dbconn;

	public BoardDao() {
		dbconn = DBConnect.getInstance();
	}

	// 글번호로 검색
	public BoardVo select(int num) {
		BoardVo vo = null;
		Connection conn = dbconn.conn();
		String sql = "select * from board where num=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			ResultSet rs = pstmt.executeQuery();// select 실행
			if (rs.next()) {//첫 줄로 이동하여 데이터 있는지 확인
				int num2 = rs.getInt(1);
				String writer = rs.getString(2);
				Date date = rs.getDate(3);
				String title = rs.getString(4);
				String content = rs.getString(5);
				vo = new BoardVo(num2, writer, date, title, content);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return vo;
	}

	public void insert(BoardVo vo) {
		Connection conn = dbconn.conn();

		String sql = "insert into board values(seq_board.nextval, ?, sysdate, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getWriter());
			pstmt.setString(2, vo.getTitle());
			pstmt.setString(3, vo.getContent());

			int num = pstmt.executeUpdate();
			System.out.println(num + " 줄이 추가되었다");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	// update: 글번호로 찾아서 title, content를 새 값으로 수정
	public void update(BoardVo vo) {
		Connection conn = dbconn.conn();
		String sql = "update board set title=?, content=? where num=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getTitle());
			pstmt.setString(2, vo.getContent());
			pstmt.setInt(3, vo.getNum());
			int num = pstmt.executeUpdate();
			System.out.println(num + " 줄이 수정됨");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	// delete: 글번호로 찾아서 삭제
	public void delete(int num) {
		Connection conn = dbconn.conn();
		String sql = "delete from board where num=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			int num2 = pstmt.executeUpdate();
			System.out.println(num2 + " 줄이 삭제됨");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
