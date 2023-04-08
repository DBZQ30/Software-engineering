package com.weideha.service.impl;


import com.weideha.mapper.adminMapper;
import com.weideha.pojo.admin;
import com.weideha.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class AdminServiceimpl implements AdminService {
    @Autowired
    private adminMapper adminMapper;
    @Override
    public admin selectbyaccandpwd(Map<String,Object> map){
        return adminMapper.selectByAccandPwd(map);
    }


    @Override
    public List<admin> selectalluser() {
        return adminMapper.selectAlluser();
    }
}
