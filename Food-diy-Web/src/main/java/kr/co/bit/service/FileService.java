package kr.co.bit.service;

import java.util.List;


import org.springframework.web.multipart.MultipartFile;

import kr.co.bit.vo.FileVO;


public interface FileService {
	
	// File Service
	String save(List<MultipartFile> files, int boardNo);
	String modifyFile(List<MultipartFile> files, int no);
	FileVO selectOneFile(int no);
	void removeFile(int no);
	void removeFileSome(List<Integer> list);
}
