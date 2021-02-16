package com.sunland.nbjj.service.impl.sys;

import com.sunland.nbjj.dao.sys.IWfxwDao;
import com.sunland.nbjj.service.sys.IWfxwService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by marty on 2016/8/4.
 */
@Service
public class WfxwServiceImpl implements IWfxwService {
    @Autowired
    private IWfxwDao wfxwDao;

    @Override
    public String getWfnrByWfxw(String wfxw) {
        return wfxwDao.getWfnrByWfxw(wfxw);
    }
}
