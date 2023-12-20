package com.kh.tinyfarm.chat.model.service;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.tinyfarm.chat.model.dao.ChatDao;
import com.kh.tinyfarm.chat.model.vo.ChatMessage;
import com.kh.tinyfarm.chat.model.vo.ChatRoom;
import com.kh.tinyfarm.member.model.vo.Member;

@Service
public class ChatServiceImpl implements ChatService{
	
	@Autowired
	private ChatDao chatDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	@Override
	public ArrayList<Member> findUser(String search) {
		
		return chatDao.findUser(sqlSession,search);
	}
	
	@Override
	public int insertChatRoom(ChatRoom cr) {
	
		return chatDao.insertChatRoom(sqlSession,cr);
	}

	@Override
	public ArrayList<ChatRoom> selectChatList(String userId) {
		
		return chatDao.selectChatList(sqlSession,userId);
	}
	
	//채팅방 데이터베이스에 이미 채팅방이 있는지 없는지 확인
	@Override
	public int checkExistChatRoom(ChatRoom cr) {

		return chatDao.checkExistChatRoom(sqlSession,cr);
	}
	
	//채팅 메세지 테이블에 추가
	@Override
	public int insertChatMsg(ChatMessage chatMessage) {
		
		return chatDao.insertChatMsg(sqlSession,chatMessage);
	}
	
	//방번호에 해당하는 채팅 메세지 리스트 가져오기
	@Override
	public ArrayList<ChatMessage> selectChatMsg(int chatRoomNo) {
		// TODO Auto-generated method stub
		return chatDao.selectChatMsg(sqlSession,chatRoomNo);
	}
	
	//유저 검색
	@Override
	public ArrayList<Member> searchUser(String search) {
		// TODO Auto-generated method stub
		return chatDao.searchUser(sqlSession,search);
	}

	@Override
	public int deleteRoom(int chatRoomNo) {
		
		return chatDao.deleteRoom(sqlSession,chatRoomNo);
	}

}