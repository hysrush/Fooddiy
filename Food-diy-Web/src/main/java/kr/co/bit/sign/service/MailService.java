package kr.co.bit.sign.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import kr.co.bit.sign.vo.MailVO;

@Service
public class MailService {

	@Autowired
	private JavaMailSender mailSender;

	public void sendMail(MailVO mail) {

		SimpleMailMessage message = new SimpleMailMessage();

		message.setFrom(mail.getSender());

		message.setTo(mail.getReceiver());

		message.setSubject(mail.getSubject());

		message.setText(mail.getContent());

		mailSender.send(message);

	}

}
