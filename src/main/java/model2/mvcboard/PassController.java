package model2.mvcboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fileupload.FileUtil;
import utils.JSFunction;

//어노테이션을 통한 요청명 매핑
@WebServlet("/mvcboard/pass.do")
public class PassController extends HttpServlet {

	//패스워드 검증 페이지로 진입
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		/*
		/mvcboard/pass.do?mode=delete&idx=126
		요청명은 이와 같으므로 파라미터를 받아오는 작업을 해야한다.
		서블릿에서는 2가지 방법으로 받을 수 있는데
		 방법1 : request내장객체를 이용한다. => req.getParameter(파라미터명)
		 방법2 : View(JSP파일)에서 EL의 param 내장객체를 사용한다. => ${param.파라미터명}
		 */
		//파라미터를 request영역에 저장한 후 View로 포워드한다.
		req.setAttribute("mode", req.getParameter("mode"));
		req.getRequestDispatcher("/14MVCBoard/Pass.jsp").forward(req, resp);
	}
	//전송한 폼값을 받아 수정페이지로 이동 혹은 게시물 삭제처리
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//검증페이지에서 전송한 폼값 받음
		String idx = req.getParameter("idx");
		String mode = req.getParameter("mode");
		String pass = req.getParameter("pass");
		
		//커넥션풀을 통한 DB연결 및 패스워드 검증
		MVCBoardDAO dao = new MVCBoardDAO();
		boolean confirmed = dao.confirmPassword(pass,idx);
		dao.close();
		/*
		※ dao 자원반납을 두번 하는 이유!
		
		만약 위에서 자원반납을 안하면 아래의 if문에서 
		edit부분 send하기전에 닫아야하며,
		delete부분에서도 닫아야 하고,
		if문을 벗어나서 else부분에서도 alert전에 닫아야 하기때문에
		우선 닫고 필요한 부분에서만 다시 열고 닫고를한 것이다.
		 */
		if(confirmed) {
			/*
			패스워드 검증에 성공한 경우
				mode가 edit이면 수정페이지로 이동한다.
						delete이면 게시물을 즉시 삭제한다.
			 */
			if(mode.equals("edit")) {
				/*
				검증이 완료된 패스워드를 session영역에 저장한다.
				session영역은 페이지를 이동해도 데이터가 공유되므로 해당 게시물을
				수정완료할때까지는 유지하고, 수정이 완료면 제거할 것이다.
				여기서 저장한 패스워드는 수정을 위한 update쿼리문의 where절의
				조건으로 사용된다.
				 */
				HttpSession session = req.getSession();
				session.setAttribute("pass", pass);
				resp.sendRedirect("../mvcboard/edit.do?idx="+idx);
			}
			else if(mode.equals("delete")) {
				//삭제인 경우 커넥션 풀을 통해 DB연결
				dao = new MVCBoardDAO();
				//기존의 게시물을 얻어온다.(첨부파일 삭제를 위해 얻어옴)
				MVCBoardDTO dto = dao.selectView(idx);
				//게시물을 삭제한다.
				int result = dao.deletePost(idx);
				//커넥션풀에 자원반납
				dao.close(); 
				//게시물 삭제에 성공한 경우 첨부된 파일을 삭제한다.
				if(result ==1) {
					//앞에서 얻어온 DTO에서 파일명을 확인한다.
					String saveFileName = dto.getSfile();
					//첨부된 파일을 삭제한다.
					FileUtil.deleteFile(req, "/Uploads", saveFileName);
				}
				//알림창을 띄운 후 리스트(목록)으로 이동한다.
				JSFunction.alertLocation(resp, "삭제되었습니다", "../mvcboard/list.do");
			}
		}
		else {
			//검증에 실패한 경우 패스워드 입력페이지로 이동한다.
			JSFunction.alertBack(resp, "비밀번호 검증에 실패했습니다.");
		}
	}
}
