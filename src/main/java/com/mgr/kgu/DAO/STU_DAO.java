package com.mgr.kgu.DAO;

import org.apache.ibatis.annotations.Param;

import com.mgr.kgu.VO.STU_VO;

// 인터페이스
public interface STU_DAO {
	boolean getlogininfo(@Param("STU_NUM") Integer STU_NUM, @Param("STU_PW") String STU_PW);

	STU_VO getAllinfo(@Param("STU_NUM") int STU_NUM);

	void changedInfo(@Param("STU_NUM") int STU_NUM, @Param("after_address") String after_address,
			@Param("after_number") String after_number, @Param("after_email") String after_email,
			@Param("after_bankname") String after_bankname, @Param("after_bankacc") String after_bankacc);

	void changedInfoPW(@Param("STU_NUM") int STU_NUM, @Param("after_pw") String after_pw,
			@Param("after_address") String after_address, @Param("after_number") String after_number,
			@Param("after_email") String after_email, @Param("after_bankname") String after_bankname,
			@Param("after_bankacc") String after_bankacc);

}