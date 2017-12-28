package kr.co.bit.service;

import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import kr.co.bit.dao.OrderDAO;
import kr.co.bit.util.MailKey;
import kr.co.bit.vo.MailVO;
import kr.co.bit.vo.OrderVO;

@Service
public class OrderServiceImp implements OrderService{

	
	@Autowired
	private OrderDAO dao;
	@Autowired
	private JavaMailSender mailSender;
	
	@Override
	public List<OrderVO> selectAllOrder(String storeName) {
		List<OrderVO> allOrderList = dao.selectAll(storeName);
		return allOrderList;
	}
	
	@Override
	public List<OrderVO> selectByIdOrder(String id) {
		List<OrderVO> dateOrderList = dao.selectById(id);
		return dateOrderList;
	}
	
	@Override
	public List<OrderVO> selectByDateOrder(String date) {
		// TODO Auto-generated method stub
		List<OrderVO> idOrderList = dao.selectByDate(date);
		return idOrderList;
	}
	
	@Override
	public void insertOrder(OrderVO orderVO) {
		
		if(orderVO.getId().equals("비회원")) {
			
			// 주문 번호 생성
			String num = new MailKey().getNum();
			
			//주문번호 이메일로 전송
			MailVO mail = new MailVO();
			
			mail.setSender("skdml132@gamil.com");
			mail.setReceiver(orderVO.getEmail());
			mail.setSubject("[SubWay] 주문 번호");
			mail.setContent("고객님의 주문 번호는 [" + num + "] 입니다.");

			try {
				// 메일 보내기
				MimeMessage message = mailSender.createMimeMessage();
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				
				messageHelper.setFrom(mail.getSender()); // 보내는사람 생략하거나 하면 정상작동을 안함
				messageHelper.setTo(mail.getReceiver()); // 받는사람 이메일
				messageHelper.setSubject(mail.getSubject()); // 메일제목은 생략이 가능하다
				messageHelper.setText(mail.getContent()); // 메일 내용

				mailSender.send(message);
				
			} catch (Exception e) {
				System.out.println(e);
			}
			
			orderVO.setNum(num);
			dao.noninsert(orderVO);
			return;
		}
		
		dao.insert(orderVO);
	}
	
	@Override
	public void deleteOrder(String id) {
		dao.delete(id);
	}
	
	@Override
	public void cancelOrder(Map<String, String> info) {
		dao.cancel(info);
	}
}
