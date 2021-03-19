package com.ch.hotel.service;

import java.util.List;

import com.ch.hotel.model.Member;

public interface MemberService {

	//Member select(String member_id);

	int update(Member member);

	int insert(Member member);

	int delete(String id);

	Member select(String member_id);

	List<Member> list(Member member);

}
