package kr.co.bit.community.dao;

import java.util.List;

import kr.co.bit.community.vo.QnaBoardVO;

public interface CommunityDAO {
	
	// QnA DAO
	List<QnaBoardVO> selectAll();
	List<QnaBoardVO> selectType(String type);
	void insert(QnaBoardVO qna);
	void update(QnaBoardVO qna);
	void delete(int no);

}
