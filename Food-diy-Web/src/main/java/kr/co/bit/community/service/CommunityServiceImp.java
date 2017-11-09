package kr.co.bit.community.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.bit.community.dao.CommunityDAO;
import kr.co.bit.community.vo.QnaBoardVO;

@Service
public class CommunityServiceImp implements CommunityService {

	@Autowired
	private CommunityDAO communityDAO;
	
	// <QnA Service>
	// QnA 전체보기
	@Override
	public List<QnaBoardVO> selectAllQnA() {
		List<QnaBoardVO> listAll = communityDAO.selectAll();
		return listAll;
	}
	// 타입별 QnA 전체보기
	@Override
	public List<QnaBoardVO> selectTypeQnA(String type) {
		List<QnaBoardVO> listType = communityDAO.selectType(type);
		return listType;
	}
	// QnA 새 글쓰기
	@Override
	public void insertQnA(QnaBoardVO qna) {
		communityDAO.insert(qna);
	}
	// QnA 글 수정
	@Override
	public void modifyQnA(QnaBoardVO qna) {
		communityDAO.update(qna);
	}
	// QnA 글 삭제
	@Override
	public void removeQnA(int no) {
		communityDAO.delete(no);
	}

	
	
}
