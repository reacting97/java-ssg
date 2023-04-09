package board;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BoardDao dao = new BoardDao();
		 dao.insert(new BoardVo(0, "bbb", null, "화면공유", "화면공유 중 입니다"));

//		BoardVo vo = dao.select(12);
//		if (vo == null) {
//			System.out.println("없는 글번호");
//		} else {
//			System.out.println(vo);
//		}
	}

}
