package com.sunland.nbjj.service.impl.acd;

import com.sunland.frame.utils.PageManager;
import com.sunland.nbjj.dao.acd.IAcdZxxsDao;
import com.sunland.nbjj.po.acd.AcdZxxs;
import com.sunland.nbjj.query.acd.AcdParamInfo;
import com.sunland.nbjj.service.acd.IAcdZxxsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AcdZxxsServiceImpl implements IAcdZxxsService{

    @Autowired
    private IAcdZxxsDao acdZxxsDao;

    @Override
    public List<AcdZxxs> getAcdZxxsVerifyList(AcdParamInfo paramInfo) throws Exception {
        List<AcdZxxs> list= null;
        try {
            PageManager pageManager = new PageManager(paramInfo.getPage(),paramInfo.getRows());
            paramInfo.setPage(pageManager.getPage());
            paramInfo.setRows(pageManager.getPageSize());
            list = acdZxxsDao.getAcdZxxsVerifyList(paramInfo);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Integer getAcdZxxsVerifyTotal(AcdParamInfo acdParamInfo) throws Exception {
        return acdZxxsDao.getAcdZxxsVerifyCount(acdParamInfo);
    }
}
