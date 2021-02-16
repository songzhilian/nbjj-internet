package com.sunland.nbjj.service.impl.acd;

import com.sunland.nbjj.dao.acd.IAcdBxgsDao;
import com.sunland.nbjj.dto.acd.AcdBxgsDto;
import com.sunland.nbjj.po.acd.AcdBxgs;
import com.sunland.nbjj.service.acd.IAcdBxgsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AcdBxgsServiceImpl implements IAcdBxgsService {

    @Autowired
    private IAcdBxgsDao acdBxgsDao;

    @Override
    public List<AcdBxgs> getAcdBxgsList(){
        return acdBxgsDao.getAcdBxgsList();
    }
}
