package kr.co.bit.sign.service;


import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import kr.co.bit.sign.vo.MailVO;

@Service
public class MailService {

	@Autowired
	private JavaMailSender mailSender;

	public void sendMail(MailVO mail) {
		
		try {
			
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
	 
	      messageHelper.setFrom("skdml132@gmail.com");  // 보내는사람 생략하거나 하면 정상작동을 안함
	      messageHelper.setTo(mail.getReceiver());     // 받는사람 이메일
	      messageHelper.setSubject(mail.getSubject()); // 메일제목은 생략이 가능하다
	      messageHelper.setText(mail.getContent());  // 메일 내용
	     
	      mailSender.send(message);
	      
		} catch(Exception e){
			System.out.println(e);
		}
	}

}
