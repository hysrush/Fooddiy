package kr.co.bit.service;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.co.bit.dao.FileDAO;
import kr.co.bit.vo.FileVO;

@Service
public class FileServiceImp implements FileService{

	@Autowired
	private FileDAO fileDAO;
	
	// <File Service>
	// File 저장
	@Override
	public String save(List<MultipartFile> files, int no) {
		
		String adminDir = "C:\\Users\\bit-user\\git\\Fooddiy-manager\\Food-manager-Web\\src\\main\\webapp\\upload\\notice\\";
		String userDir = "C:\\Users\\bit-user\\git\\Fooddiy\\Food-diy-Web\\src\\main\\webapp\\upload\\notice\\";
		
		// windows 사용자라면 "c:\temp\년도\월\일" 형태의 문자열을 구한다.
		String formattedDate = new SimpleDateFormat("yyyy" + File.separator + "MM" + File.separator + "dd").format(new Date());
		
		String adminFolderPath = adminDir + formattedDate;
		String userFolderPath = userDir + formattedDate;
		
		File adminF = new File(adminFolderPath);
		if(!adminF.exists()){ // 파일이 존재하지 않는다면
		   adminF.mkdirs(); // 해당 디렉토리를 만든다. 하위폴더까지 한꺼번에 만든다.
		}

		File userF = new File(userFolderPath);
		if(!userF.exists()){ // 파일이 존재하지 않는다면
			userF.mkdirs(); // 해당 디렉토리를 만든다. 하위폴더까지 한꺼번에 만든다.
		}
		
		String filePath = null;
		
		for(MultipartFile file : files) {
			String name = file.getName();
			// 업로드 파일 명
			String fileOriName = file.getOriginalFilename();
			String uuid = UUID.randomUUID().toString(); // 중복될 일이 거의 없다.
			// 파일명이 중복되지 않게 파일명에 시간 추가
			String fileSaveName = uuid + "_" + fileOriName;
			long fileSize = file.getSize();
			String contentType = file.getContentType();
		   
			// 파일 업로드 경로
			String adminPath = adminFolderPath + File.separator + fileSaveName; // 실제 저장되는 파일의 절대 경로
			String userPath = userFolderPath + File.separator + fileSaveName; // 실제 저장되는 파일의 절대 경로
		
			/** 파일 정보 */
			FileVO fileVO = new FileVO();
			fileVO.setNo(no);
			fileVO.setName(name);
			fileVO.setFileOriName(fileOriName);
			fileVO.setFileSaveName(fileSaveName);
			fileVO.setFileSize(fileSize);
			fileVO.setContentType(contentType);
		   
			// 실제 파일을 저장함.
			// try-with-resource 구문. close()를 할 필요가 없다. java 7 이상에서 가능
			try (InputStream in = file.getInputStream(); FileOutputStream adminFOS = new FileOutputStream(adminPath)) {
				int readCount = 0;
				byte[] buffer = new byte[512];
				System.out.println("admin");
				while ((readCount = in.read(buffer)) != -1) {
					adminFOS.write(buffer, 0, readCount);
				}
				adminFOS.close();
			} catch (Exception ex) {
				ex.printStackTrace();
			}
			
			try (InputStream in2 = file.getInputStream(); FileOutputStream userFOS = new FileOutputStream(userPath)){
				int readCount2 = 0;
				byte[] buffer2 = new byte[512];
				System.out.println("user");
				while ((readCount2 = in2.read(buffer2)) != -1) {
					userFOS.write(buffer2, 0, readCount2);
				}
				userFOS.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		   // 첨부파일VO 저장
		   fileDAO.insert(fileVO);
		   System.out.println(fileVO.toString());
		   filePath = formattedDate + File.separator + fileSaveName;
		}
		return filePath;
	}
	// File 수정
	@Override
	public String modifyFile(List<MultipartFile> files, int no) {
		
		String baseDir = "C:\\Users\\bit-user\\git\\Fooddiy-manager\\Food-manager-Web\\src\\main\\webapp\\upload\\notice";
		// windows 사용자라면 "c:\temp\년도\월\일" 형태의 문자열을 구한다.
		String formattedDate = "\\" + new SimpleDateFormat("yyyy" + File.separator + "MM" + File.separator + "dd").format(new Date());
		String folderPath = baseDir + formattedDate;
		File f = new File(folderPath);
   
		if(!f.exists()){ // 파일이 존재하지 않는다면
		   f.mkdirs(); // 해당 디렉토리를 만든다. 하위폴더까지 한꺼번에 만든다.
		}
		
		String filePath_NEW = null;
		
		for(MultipartFile file : files) {
			String name = file.getName();
			// 업로드 파일 명
			String fileOriName = file.getOriginalFilename();
			String uuid = UUID.randomUUID().toString(); // 중복될 일이 거의 없다.
			// 파일명이 중복되지 않게 파일명에 시간 추가
			String fileSaveName = uuid + "_" + fileOriName;
			double fileSize = file.getSize();
			String contentType = file.getContentType();
		   
			// 파일 업로드 경로
			String path = folderPath + File.separator + fileSaveName; // 실제 저장되는 파일의 절대 경로
		
			/** 파일 정보 */
			FileVO fileVO_NEW = new FileVO();
			fileVO_NEW.setNo(no);
			fileVO_NEW.setName(name);
			fileVO_NEW.setFileOriName(fileOriName);
			fileVO_NEW.setFileSaveName(fileSaveName);
			fileVO_NEW.setFileSize(fileSize);
			fileVO_NEW.setContentType(contentType);
		   
			// 실제 파일을 저장함.
			// try-with-resource 구문. close()를 할 필요가 없다. java 7 이상에서 가능
			try(
					InputStream in = file.getInputStream();
					FileOutputStream fos = new FileOutputStream(path))
				{
					int readCount = 0;
					byte[] buffer = new byte[512];
					while((readCount = in.read(buffer)) != -1){
						fos.write(buffer,0,readCount);
					}
		   }catch(Exception ex){
		       ex.printStackTrace();
		   }
		   // 첨부파일 수정
		   fileDAO.update(fileVO_NEW);
		   System.out.println(fileVO_NEW.toString());
		   filePath_NEW = formattedDate + File.separator + fileSaveName;
		}
		return filePath_NEW;
	}
	// File 조회	
	@Override
	public FileVO selectOneFile(int no) {
		
		FileVO fileDetail = fileDAO.selectOne(no);
		double sizeLong = fileDetail.getFileSize();
		double size = Math.round((sizeLong/(double)1024)*10)/10.0; 	//소숫점 첫째자리 까지 표시
		
		System.out.println(size);
		fileDetail.setFileSize(size);
		
		return fileDetail;
	}
	// File 삭제
	@Override
	public void removeFile(int no) {
		fileDAO.delete(no);
	}
	// File 다중 삭제
	@Override
	public void removeFileSome(List<Integer> list) {
		fileDAO.deleteSome(list);
	}
	
}

