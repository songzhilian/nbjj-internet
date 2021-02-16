package com.sunland.nbjj.service.admin;

import com.sunland.nbjj.po.admin.SysUser;

/**
 * Created by xdb on 2016/6/1.
 */
public interface ISysUserService {

    public SysUser getUserInfoByYhdm(String yhdm);

    public boolean registerUser(SysUser sysUser);

    public int queryAccountCountById(Integer bxgsid);

    public boolean updateUser(SysUser sysUser);
}
