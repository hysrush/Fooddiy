package kr.co.bit.service;

import java.util.List;

import kr.co.bit.vo.SnsRepVO;

public interface RepService {

	public List<SnsRepVO> list(int no);
    // 댓글 입력
    public void insert(SnsRepVO vo);
    // 댓글 수정
    public void update(SnsRepVO vo);
    // 댓글 삭제
    public void delete(int repNo);
	
	
	
	
}
