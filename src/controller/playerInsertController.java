package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import player.PlayerDAO;
import player.PlayerVO;

public class playerInsertController implements Controller  {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("선수등록");

		// 서비스 처리
		List<PlayerVO> list = PlayerDAO.getInstance().selectAll(null);

		// 결과 저장
		request.setAttribute("list", list);
		// 페이지 이동
		request.getRequestDispatcher("/player/playerInsert.jsp").forward(request, response);
		
	}

}
