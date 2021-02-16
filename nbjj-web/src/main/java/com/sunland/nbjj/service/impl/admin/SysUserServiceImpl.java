package com.sunland.nbjj.service.impl.admin;

import com.sunland.nbjj.dao.admin.ISysUserDao;
import com.sunland.nbjj.po.admin.SysUser;
import com.sunland.nbjj.service.admin.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by xdb on 2016/6/1.
 */
@Service
public class SysUserServiceImpl implements ISysUserService {

    @Autowired
    private ISysUserDao sysUserDao;

    @Override
    public SysUser getUserInfoByYhdm(String yhdm) {
        return sysUserDao.getUserInfoByYhdm(yhdm);
    }

    @Override
    public boolean registerUser(SysUser sysUser) {
        Integer row = sysUserDao.insertUser(sysUser);
        if(row>0){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public int queryAccountCountById(Integer bxgsid) {
        return sysUserDao.getAccountCountById(bxgsid);
    }

    @Override
    public boolean updateUser(SysUser sysUser) {
        Integer row =  sysUserDao.updateSysUser(sysUser);
        if(row > 0){
            return true;
        }else{
            return false;
        }
    }
}
