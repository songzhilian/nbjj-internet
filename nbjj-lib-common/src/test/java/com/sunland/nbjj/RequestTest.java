package com.sunland.nbjj;

import com.sunland.nbjj.common.utils.WebUtil;
import org.junit.Test;

/**
 * Created by marty on 2016/11/29.
 */
public class RequestTest {

    @Test
    public void doPostTest(){
        try {
            /*Map<String, String> map = new HashMap<String, String>();
            map.put("jkdh","904401161129330422855");
            map.put("id","20");
            map.put("ywm","3002");*/
            String ret = WebUtil.doPost("http://220.191.220.229:9080/punishnet/net/payAction.do?method=payApp&jkdh=904401161129330422855&id=20&ywm=3002&tel=", null);
            System.out.println(ret);
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
