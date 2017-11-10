package kr.co.bit.community.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.community.vo.NoticeBoardVO;

@Repository
public class NoticeDAOImp implements NoticeDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.community.dao.NoticeDAO.";

	// <Notice DAO>
	// Notice 전체보기
	@Override
	public List<NoticeBoardVO> selectAll() {
		List<NoticeBoardVO> listAll = sqlSession.selectList(url + "selectAllNotice");
		return listAll;
	}
	// 글번호별 Notice 글보기
	@Override
	public NoticeBoardVO selectOne(int no) {
		NoticeBoardVO noticeDetail = sqlSession.selectOne(url + "selectOneNotice", no);
		return noticeDetail;
	}
	// Notice 새 글쓰기
	@Override
	public void insert(NoticeBoardVO noticeVO) {
		sqlSession.insert(url + "insertNotice", noticeVO);
	}
	// Notice 글 수정
	@Override
	public void update(NoticeBoardVO noticeVO) {
		sqlSession.update(url + "modifyNotice", noticeVO);
	}
	// Notice 글 삭제
	@Override
	public void delete(int no) {
		sqlSession.delete(url + "removeNotice", no);
	}
	// Notice 조회수 증가
	@Override
	public void addViewcnt(int no) {
		sqlSession.update(url + "updateViewcntNotice", no);
	}
}
