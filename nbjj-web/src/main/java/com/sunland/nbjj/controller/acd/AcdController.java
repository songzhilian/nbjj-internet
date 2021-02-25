package com.sunland.nbjj.controller.acd;

import com.sunland.frame.enumerate.EnumJsonResult;
import com.sunland.frame.utils.AcdProperties;
import com.sunland.frame.utils.BeanMapper;
import com.sunland.nbjj.common.utils.DateUtil;
import com.sunland.nbjj.common.utils.JsonUtil;
import com.sunland.nbjj.common.utils.StringUtil;
import com.sunland.nbjj.dto.acd.AcdDutySimpleDto;
import com.sunland.nbjj.dto.acd.AcdSyncSmsDto;
import com.sunland.nbjj.dto.acd.AcdZxxsDto;
import com.sunland.nbjj.dto.admin.JsonResultDto;
import com.sunland.nbjj.po.acd.*;
import com.sunland.nbjj.po.acl.AclDept;
import com.sunland.nbjj.po.acl.AclUser;
import com.sunland.nbjj.query.acd.AcdParamInfo;
import com.sunland.nbjj.service.acd.IAcdBxgsService;
import com.sunland.nbjj.service.acd.IAcdService;
import com.sunland.nbjj.service.acd.IAcdZxxsService;
import com.sunland.nbjj.service.acl.IAclDeptService;
import com.sunland.nbjj.service.acl.IAclUserService;
import com.sunland.nbjj.service.sys.ISysDictService;
import com.sunland.nbjj.service.sys.IWfxwService;
import com.sunland.nbjj.util.Constants;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xdb on 2016/5/25.
 */
@Controller
@RequestMapping(value = "/acd")
public class AcdController {
    private static final Logger logger = Logger.getLogger(AcdController.class);
    @Autowired
    private IAcdService acdService;

    @Autowired
    private IAclUserService aclUserService;

    @Autowired
    private IAclDeptService aclDeptService;

    @Autowired
    private IWfxwService wfxwService;

    @Autowired
    private ISysDictService sysDictService;

    @Autowired
    private IAcdBxgsService acdBxgsService;

    @Autowired
    private IAcdZxxsService acdZxxsService;


    @RequestMapping(value = "bxgs/search")
    public String getAcdSearchPage(){
        return "nbjj/acd/acdSearch";
    }

    @RequestMapping(value = "zqmj/search")
    public String getAcdVerifySearchPage(){
        return "nbjj/acd/acdVerifySearch";
    }
    @RequestMapping(value = "dsr/search")
    public String getAcdDsrSearchPage(){
        return "nbjj/acd/acdDsrSearch";
    }

    @RequestMapping(value = "data/list")
    @ResponseBody
    public Map<String, Object> getAcdDataList(HttpServletRequest request, AcdParamInfo paramInfo){
        Map<String, Object> map = null;
        try {
            map = new HashMap<String, Object>();
            List<AcdDutySimple> acdDutyList = acdService.getAcdList(paramInfo);
            Integer total = acdService.getAcdTotal(paramInfo);
            map.put("rows", acdDutyList);
            map.put("total", total);
        }catch (Exception ex){
            logger.error("getAcdDataList异常：传入参数："+JsonUtil.writeValueAsString(paramInfo),ex);
        }
        return map;
    }

    @RequestMapping(value = "data/verifyList")
    @ResponseBody
    public Map<String,Object> getAcdVerifyDataList(HttpServletRequest request,AcdParamInfo paramInfo){
        Map<String,Object> map = null;
        try {
            map = new HashMap<String,Object>();
            List<AcdZxxs> acdZxxsList = acdZxxsService.getAcdZxxsVerifyList(paramInfo);
            Integer total = acdZxxsService.getAcdZxxsVerifyTotal(paramInfo);
            map.put("rows",acdZxxsList);
            map.put("total",total);
        } catch (Exception e) {
            logger.error("getAcdVerifyDataList数据异常：传参："+JsonUtil.writeValueAsString(paramInfo),e);
        }
        return map;
    }

    @RequestMapping(value = "insure/data")
    @ResponseBody
    public Map<String, Object>  getAcdBxgsList(HttpServletRequest request) {
        Map map = new HashMap<String, Object>();;
        List list = acdBxgsService.getAcdBxgsList();
        map.put("insureList",list);
        return  map;
    }

    @RequestMapping(value = "data/zxxsItem")
    @ResponseBody
    public AcdZxxsDto getAcdZxxsItem(Long lsh){
        AcdZxxsDto acdZxxsDto = null;
        try {
            AcdZxxs acdZxxs = acdService.getAcdZxxsInfoByLsh(lsh);
            if (acdZxxs != null){
                acdZxxsDto = BeanMapper.map(acdZxxs,AcdZxxsDto.class);
                if(acdZxxsDto != null){
                    if (acdZxxsDto.getSgrdyy() != null && !acdZxxsDto.getSgrdyy().isEmpty()){
                        acdZxxsDto.setSgrdyy(sysDictService.getSysDictValue(Constants.DMLB_SGRDYY,acdZxxsDto.getSgrdyy()));
                    }
                    if(acdZxxsDto.getList() != null && acdZxxsDto.getList().size()>0){
                        for (int i = 0 ;i<acdZxxsDto.getList().size();i++){
                            AcdZxxsHuman human = acdZxxsDto.getList().get(i);
                            if(human.getWfxw1() != null && !human.getWfxw1().equals("")){
                                human.setWfxw1(wfxwService.getWfnrByWfxw(human.getWfxw1()));
                            }

                            if(human.getWfxw2() != null && !human.getWfxw2().equals("")){
                                human.setWfxw2(wfxwService.getWfnrByWfxw(human.getWfxw1()));
                            }

                            if(human.getWfxw3() != null && !human.getWfxw3().equals("")){
                                human.setWfxw3(wfxwService.getWfnrByWfxw(human.getWfxw1()));
                            }
                            if(human.getCllx() != null && !human.getCllx().equals("")){
                                human.setCllx(sysDictService.getSysDictValue(Constants.DMLB_CLLX, human.getCllx()));
                            }
                        }
                    }
                    acdZxxsDto.setSgfssjstr(DateUtil.getDate(acdZxxsDto.getSgfssj(),14));

                }
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return acdZxxsDto;
    }

    @RequestMapping(value = "data/item")
    @ResponseBody
    public AcdDutySimpleDto getAcdItem(Long lsh){
        AcdDutySimpleDto dutySimpleDto = null;
        try {
            AcdDutySimple simple = acdService.getAcdInfoByLsh(lsh);
            if (simple != null) {
                dutySimpleDto = BeanMapper.map(simple, AcdDutySimpleDto.class);
                if(dutySimpleDto != null){
                    if(dutySimpleDto.getSgrdyy() != null && !"".equals(dutySimpleDto.getSgrdyy())){
                        dutySimpleDto.setSgrdyy(sysDictService.getSysDictValue(Constants.DMLB_SGRDYY, dutySimpleDto.getSgrdyy()));
                    }
                    if(dutySimpleDto.getAcdDutyHumanList() != null && dutySimpleDto.getAcdDutyHumanList().size() > 0){
                        for(int i=0;i<dutySimpleDto.getAcdDutyHumanList().size();i++){
                            AcdDutySimpleHuman human = dutySimpleDto.getAcdDutyHumanList().get(i);
                            if(human.getWfxw1() != null && !human.getWfxw1().equals("")){
                                human.setWfxw1(wfxwService.getWfnrByWfxw(human.getWfxw1()));
                            }

                            if(human.getWfxw2() != null && !human.getWfxw2().equals("")){
                                human.setWfxw2(wfxwService.getWfnrByWfxw(human.getWfxw1()));
                            }

                            if(human.getWfxw3() != null && !human.getWfxw3().equals("")){
                                human.setWfxw3(wfxwService.getWfnrByWfxw(human.getWfxw1()));
                            }
                            if(human.getCllx() != null && !human.getCllx().equals("")){
                                human.setCllx(sysDictService.getSysDictValue(Constants.DMLB_CLLX, human.getCllx()));
                            }

                            String bxgs = human.getBxgs();
                            if(!StringUtil.isEmpty(bxgs)){
                                if(bxgs.indexOf("中国人民财产保险") != -1){
                                    human.setBxgs("人民保险");
                                }else if(bxgs.indexOf("中国大地财产保险") != -1){
                                    human.setBxgs("大地保险");
                                }else if(bxgs.indexOf("中国太平财产保险") != -1){
                                    human.setBxgs("太平保险");
                                }else if(bxgs.indexOf("华安财产保险") != -1){
                                    human.setBxgs("华安保险");
                                }else if(bxgs.indexOf("华泰财产保险") != -1){
                                    human.setBxgs("华泰保险");
                                }else if(bxgs.indexOf("天平汽车保险") != -1){
                                    human.setBxgs("天平保险");
                                }else if(bxgs.indexOf("安联财产保险") != -1){
                                    human.setBxgs("安联保险");
                                }else if(bxgs.indexOf("民安财产保险") != -1){
                                    human.setBxgs("民安保险");
                                }else if(bxgs.indexOf("中国平安财产保险") != -1){
                                    human.setBxgs("平安保险");
                                }else if(bxgs.indexOf("都邦财产保险") != -1){
                                    human.setBxgs("都邦保险");
                                }else if(bxgs.indexOf("中华联合财产保险") != -1){
                                    human.setBxgs("中华保险");
                                }else if(bxgs.indexOf("永诚财产保险") != -1){
                                    human.setBxgs("永诚保险");
                                }else if(bxgs.indexOf("永安财产保险") != -1){
                                    human.setBxgs("永安保险");
                                }else if(bxgs.indexOf("阳光财产保险") != -1){
                                    human.setBxgs("阳光保险");
                                }else if(bxgs.indexOf("中国太平洋财产保险") != -1){
                                    human.setBxgs("太平洋保险");
                                }else if(bxgs.indexOf("安邦财产保险") != -1){
                                    human.setBxgs("安邦保险");
                                }else if(bxgs.indexOf("中银保险") != -1){
                                    human.setBxgs("中银保险");
                                }else if(bxgs.indexOf("天安财产保险") != -1){
                                    human.setBxgs("天安保险");
                                }else if(bxgs.indexOf("鼎和财产保险") != -1){
                                    human.setBxgs("鼎和保险");
                                }else if(bxgs.indexOf("中国人寿财产保险") != -1){
                                    human.setBxgs("人寿保险");
                                }else if(bxgs.indexOf("信达财产保险") != -1){
                                    human.setBxgs("信达保险");
                                }else if(bxgs.indexOf("紫金财产保险") != -1){
                                    human.setBxgs("紫金保险");
                                }else if(bxgs.indexOf("国泰财产保险") != -1){
                                    human.setBxgs("国泰保险");
                                }else if(bxgs.indexOf("英大泰和财产保险") != -1){
                                    human.setBxgs("英大泰和保险");
                                }else if(bxgs.indexOf("众诚汽车保险") != -1){
                                    human.setBxgs("众诚保险");
                                }else if(bxgs.indexOf("浙商财产保险") != -1){
                                    human.setBxgs("浙商保险");
                                }else if(bxgs.indexOf("利宝保险") != -1){
                                    human.setBxgs("利宝保险");
                                }else if(bxgs.indexOf("其他") != -1){
                                    human.setBxgs("其他");
                                }
                            }
                        }
                    }
                }
                AclUser aclUser = aclUserService.getUserInfoByYhdm(dutySimpleDto.getYhdm());
                if (aclUser != null) {
                    dutySimpleDto.setXm(aclUser.getXm());
                }
                dutySimpleDto.setDatestr(DateUtil.getDate(dutySimpleDto.getSgfssj(), 6));
                dutySimpleDto.setSgfssjstr(DateUtil.getDate(dutySimpleDto.getSgfssj(), 14));
                AclDept aclDept = aclDeptService.getDept(dutySimpleDto.getSszd());
                if (aclDept != null) {
                    if (aclDept.getSsdd().equals("330300000000")) {
                        dutySimpleDto.setSsdd("330300500000");
                    } else {
                        dutySimpleDto.setSsdd(aclDept.getSsdd());
                    }
                }
            }
        }catch (Exception ex){
            logger.error("getAcdItem异常：传入参数："+lsh, ex);
            return null;
        }
        return dutySimpleDto;
    }

    @RequestMapping(value = "bxgs/print", method = RequestMethod.GET)
    public ModelAndView getAcdPrintPage(Long lsh,String type){
        ModelAndView mav = new ModelAndView("nbjj/acd/acdDutySimpleWsPrint");
        Date nowDate = DateUtil.formatDateTime2(new Date(), 1);
        Date compareDate = DateUtil.parseDate("2018-05-01 24:00:01", 1);
        if(nowDate.getTime() >= compareDate.getTime()){
            mav.addObject("flag",1);
        }else{
            mav.addObject("flag",0);
        }
        mav.addObject("lsh", lsh);
        mav.addObject("type", type);
        return mav;
    }

    @RequestMapping(value = "dsr/print", method = RequestMethod.GET)
    public ModelAndView getAcdPrintPage(String sgbh,String type){
        ModelAndView mav = new ModelAndView("nbjj/acd/acdDutySimpleWsPrint");
        try {
            Long lsh = acdService.getAcdLshBySgbh(sgbh);
            Date nowDate = DateUtil.formatDateTime2(new Date(), 1);
            Date compareDate = DateUtil.parseDate("2018-05-01 24:00:01", 1);
            if(nowDate.getTime() >= compareDate.getTime()){
                mav.addObject("flag",1);
            }else{
                mav.addObject("flag",0);
            }
            mav.addObject("lsh", lsh);
            mav.addObject("type", type);
        }catch (Exception ex){
            logger.error("getAcdPrintPage异常：传入参数："+sgbh,ex);
        }
        return mav;
    }

    @RequestMapping(value = "dsr/check")
    @ResponseBody
    public JsonResultDto checkAcdSjhm(String sgbh, String sjhm){
        try {
            boolean flag = acdService.checkAcdBySgbhSjhm(sgbh, sjhm);
            if (flag) {
                return new JsonResultDto(EnumJsonResult.ACD_SJHM_EXISTS.getValue(), "");
            } else {
                return new JsonResultDto(EnumJsonResult.ACD_SJHM_NOTEXISTS.getValue(), EnumJsonResult.ACD_SJHM_NOTEXISTS.getText());
            }
        }catch (Exception ex){
            logger.error("checkAcdSjhm异常："+"传入参数：sgbh("+sgbh+"),sjhm("+sjhm+")", ex);
            return null;
        }
    }

    @RequestMapping(value = "dsr/check/captcha")
    @ResponseBody
    public JsonResultDto checkAcdCaptcha(AcdSyncSmsDto smsDto){
        try {

            AcdSyncSmsCaptcha smsCaptcha = acdService.getAcdSmsCaptchaBySjhmYzm(smsDto);
            if (smsCaptcha == null) {
                return new JsonResultDto(EnumJsonResult.ACD_CAPTCHA_NOTEXISTS.getValue(), EnumJsonResult.ACD_CAPTCHA_NOTEXISTS.getText());
            } else {
                //判断验证码是否过期
                Date qqsj = smsCaptcha.getQqsj();
                if (qqsj != null) {
                    Date expireTime = DateUtil.addMinutes(qqsj, Integer.parseInt(AcdProperties.getString("acd_captcha_expire_time")));
                    if (new Date().getTime() <= expireTime.getTime()) { //没过期
                        return new JsonResultDto(EnumJsonResult.ACD_CAPTCHA_NOTEXPIRE.getValue(), "");
                    } else { //过期了
                        return new JsonResultDto(EnumJsonResult.ACD_CAPTCHA_EXPIRE.getValue(), EnumJsonResult.ACD_CAPTCHA_EXPIRE.getText());
                    }
                } else {
                    return null;
                }
            }
        }catch (Exception ex){
            logger.error("checkAcdCaptcha异常："+"传入参数："+ JsonUtil.writeValueAsString(smsDto), ex);
            return null;
        }
    }

    @RequestMapping(value = "dsr/captcha")
    @ResponseBody
    public JsonResultDto saveAcdSms(String sgbh, String sjhm){
        try{
            AcdSyncSms sms = new AcdSyncSms();
            sms.setSglsh(acdService.getAcdLshBySgbh(sgbh));
            sms.setSjhm(sjhm);
            acdService.saveAcdSms(sms);
        }catch (Exception ex){
            logger.error("saveAcdSms异常："+"传入参数：sgbh("+sgbh+"),sjhm("+sjhm+")", ex);
            return new JsonResultDto(EnumJsonResult.SMS_SEND_FAILED.getValue(),EnumJsonResult.SMS_SEND_FAILED.getText());
        }
        return new JsonResultDto(EnumJsonResult.SMS_SEND_SUCCESS.getValue(),EnumJsonResult.SMS_SEND_SUCCESS.getText());
    }

}
