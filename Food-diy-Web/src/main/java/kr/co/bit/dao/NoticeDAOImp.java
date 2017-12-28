package kr.co.bit.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.bit.vo.NoticeBoardVO;

@Repository
public class NoticeDAOImp implements NoticeDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	private String url = "kr.co.bit.dao.NoticeDAO.";

	// <Notice DAO>
	// Notice 전체보기
	@Override
	public List<NoticeBoardVO> selectAll(String type, String searchOption, String keyword) throws Exception {
		// 검색옵션, 키워드 맵에 저장
	    Map<String, String> map = new HashMap<String, String>();
	    map.put("type", type);
	    map.put("searchOption", searchOption);
	    map.put("keyword", keyword);
		List<NoticeBoardVO> listAll = sqlSession.selectList(url + "selectAllNotice", map);
		return listAll;
	}
	// 게시글 레코드 갯수
	@Override
	public int searchCnt(String type, String searchOption, String keyword) throws Exception {
		// 검색옵션, 키워드 맵에 저장
	    Map<String, String> map = new HashMap<String, String>();
	    map.put("type", type);
	    map.put("searchOption", searchOption);
	    map.put("keyword", keyword);
	    int searchCnt = sqlSession.selectOne(url + "searchCnt", map);
		return searchCnt;
	}
	// 타입별 전체보기
	@Override
	public List<NoticeBoardVO> selectType(String type) {
		List<NoticeBoardVO> listType = sqlSession.selectList(url + "selectType", type);
		return listType;
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
	// Notice 글 다중 삭제
	@Override
	public void deleteSome(List<Integer> list) {
		sqlSession.delete(url + "removeNoticeSome", list);
	}
	// Notice 조회수 증가
	@Override
	public void addViewcnt(int no) {
		sqlSession.update(url + "updateViewcntNotice", no);
	}
}
