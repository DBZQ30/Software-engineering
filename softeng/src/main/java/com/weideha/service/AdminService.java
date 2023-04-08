package com.weideha.service;


import com.weideha.pojo.admin;

import java.util.List;
import java.util.Map;

public interface AdminService {
   public admin selectbyaccandpwd(Map<String,Object>map);
   public List<admin> selectalluser();
}
