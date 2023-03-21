package com.anabada.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

import com.anabada.domain.Used;
import com.anabada.domain.Used_detail;
import com.anabada.domain.UserDTO;

@Mapper
public interface UsedDAO {

	UserDTO findUser(String user_email);

	Used findOneUsed(String used_id);

	Used_detail findOneUseddetail(String used_id);

	int purchase(Used_detail used_detail);

	int usemoney(HashMap<String, Object> map);
	
	List<UserDTO> allUser();
	
	/**
	 * 중고거래 파는 글 저장*/
	public int usedSellWrite(Used used);
	
	/**
	 * 중고거래 파는 글 사진저장*/
	int insertFile(File file);
	
	/**
	 * 중고거래 파는 글 목록 출력*/
	public ArrayList<Used>usedSellBoard(HashMap<String, String> map, RowBounds r);
	public ArrayList<File> fileList();
	
	/**
	 * 중고거래 파는 글 한개 출력*/
	public Used usedSellBoardRead(String used_id);
	
	/**
	 * 파는 글 삭제*/
	public String usedSellBoardDelete(Used used);
	
	/**
	 * 글 갯수*/
	public int total(HashMap<String, String> map);
	
	/**
	 * 중고거래 사는 글 저장*/
	public int usedBuyWrite(Used_buy used_buy);
	
	/**
	 * 중고거래 사는 글 목록 출력*/
	public ArrayList<Used_buy> usedBuyBoard();
	
	/**
	 * 중고거래 사는 글 한개 출력*/
	public Used_buy usedBuyBoardRead(String num);

	
	
}
