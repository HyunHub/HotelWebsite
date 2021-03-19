package com.ch.hotel.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ch.hotel.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao{
	
	@Autowired
	private SqlSessionTemplate sst;

	/*
	 * public Member select(String member_id) { return
	 * sst.selectOne("memberns.select", member_id); }
	 */
	public int update(Member member) {
		return sst.update("memberns.update", member);
	}
	public int insert(Member member) {
		return sst.insert("memberns.insert", member);
	}
	public int delete(String id) {
		return sst.update("memberns.delete", id);
	}
	public Member select(String member_id) {
		return sst.selectOne("memberns.select", member_id);
	}
	public List<Member> list(Member member) {
		return sst.selectList("memberns.list", member);
	}

}
