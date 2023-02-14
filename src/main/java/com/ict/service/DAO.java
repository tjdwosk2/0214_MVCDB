package com.ict.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class DAO {
	private SqlSessionTemplate sqlSessionTemplate;

	public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}
	
	// 리스트
	
	public List<VO> getList(){
		return sqlSessionTemplate.selectList("members.list");
	}
	//삽입
	public int getInsert(VO vo) {
		return sqlSessionTemplate.insert("members.insert", vo);
		
	}
	//삭제
	public int getDelete(String m_idx) {
		return sqlSessionTemplate.delete("members.delete", m_idx);
	}
}
