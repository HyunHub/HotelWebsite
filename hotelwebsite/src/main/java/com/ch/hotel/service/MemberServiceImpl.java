package com.ch.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.hotel.dao.MemberDao;
import com.ch.hotel.model.Member;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDao md;

	/*
	 * public Member select(String member_id) { return md.select(member_id); }
	 */
	public int update(Member member) {
		return md.update(member);
	}
	public int insert(Member member) {
		return md.insert(member);
	}
	public int delete(String id) {
		return md.delete(id);
	}
	public Member select(String member_id) {
		return md.select(member_id);
	}
	public List<Member> list(Member member) {
		return md.list(member);
	}

}
