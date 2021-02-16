package com.sunland.nbjj.dao.admin;

import com.sunland.nbjj.common.mybatis.MyBatisRepository;
import com.sunland.nbjj.po.admin.SysUser;

/**
 * Created by xdb on 2016/6/1.
 */
@MyBatisRepository
public interface ISysUserDao {

    public SysUser getUserInfoByYhdm(String yhdm);

    public Integer insertUser(SysUser sysUser);

    public int getAccountCountById(Integer bxgsid);

    public int updateSysUser(SysUser sysUser);
}
