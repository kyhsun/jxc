package com.zx.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zx.dao.LeaveDao;
import com.zx.mapper.LeavebillMapper;
import com.zx.pojo.Leavebill;
import com.zx.pojo.LeavebillExample;
import com.zx.pojo.LeavebillExample.Criteria;
import com.zx.pojo.Users;
import com.zx.service.LeaveBillService;
@Service
public class LeaveBillServiceImpl implements LeaveBillService{
@Autowired
LeaveDao leaveDao;
@Autowired
LeavebillMapper leavebillMapper;
	public List<Leavebill> getLeaveById(int i) {
		LeavebillExample example = new LeavebillExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andUseridEqualTo(i);
		List<Leavebill> selectByExample = leavebillMapper.selectByExample(example) ;
		return selectByExample;
	}
	public boolean addLeaveBill(Leavebill l) {
		int i = leavebillMapper.insert(l);
		if(i == 1){
			return true;
		}
		return false;
	}


}
