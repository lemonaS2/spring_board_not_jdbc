package com.jang.member;

import java.sql.Connection;
import java.util.HashMap;


public interface IMemberDAO {
	Connection connect();
	void disconnect(Connection con); 
	
	int insertBoard(Connection con, Member member);
	
	Member loginCheck(Connection con, Member member);
	
	// ���̵� �ߺ�Ȯ��
	int getCheckId(Connection con, String mem_id);
	
	// �α��� üũ
	Member memberLogin(Connection con, HashMap<String, String> map); 
}
