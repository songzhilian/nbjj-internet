package com.sunland.nbjj.service.impl.acl;

import com.sunland.nbjj.dao.acl.IAclUserDao;
import com.sunland.nbjj.po.acl.AclUser;
import com.sunland.nbjj.service.acl.IAclUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by xdb on 2016/5/28.
 */
@Service
public class AclUserServiceImpl implements IAclUserService {

    @Autowired
    private IAclUserDao aclUserDao;

    @Override
    public AclUser getUserInfoByYhdm(String yhdm) {
        return aclUserDao.getUserInfoByYhdm(yhdm);
    }
}
