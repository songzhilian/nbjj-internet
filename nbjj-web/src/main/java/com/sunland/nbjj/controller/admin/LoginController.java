package com.sunland.nbjj.controller.admin;

import com.sunland.frame.enumerate.EnumJsonResult;
import com.sunland.frame.utils.AcdProperties;
import com.sunland.nbjj.common.utils.MD5PwdUtil;
import com.sunland.nbjj.dto.admin.JsonResultDto;
import com.sunland.nbjj.dto.admin.LoginDto;
import com.sunland.nbjj.po.admin.SysUser;
import com.sunland.nbjj.service.acd.IAcdBxgsService;
import com.sunland.nbjj.service.admin.ISysUserService;
import com.sunland.nbjj.util.Constants;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by xdb on 2016/4/17.
 *
 * 登录相关Controller
 */

@Controller
@RequestMapping(value = "/bxlogin")
public class LoginController {

    @Autowired
    private ISysUserService sysUserService;


    @RequestMapping(value = "login")
    @ResponseBody
    public JsonResultDto login(@RequestBody LoginDto loginDto, HttpServletRequest request, HttpServletResponse response){

        Subject currentUser = SecurityUtils.getSubject();

        //获取基于用户名和密码的令牌
        UsernamePasswordToken token = new UsernamePasswordToken(loginDto.getYhdm(), MD5PwdUtil.encodePassword(loginDto.getMm()));
        //subject权限对象
        Subject subject = SecurityUtils.getSubject();
        try{
            //这句是提交申请，验证能不能通过。这里会回调reaml里的一个方法
            // 回调doGetAuthenticationInfo，进行认证
            subject.login(token);
        }catch (Exception ex){
            return new JsonResultDto(EnumJsonResult.LOGIN_FAILED.getValue(),EnumJsonResult.LOGIN_FAILED.getText());
        }
        return new JsonResultDto(EnumJsonResult.LOGIN_SUCCESS.getValue(),""); //登录成功
    }

    @RequestMapping(value = "logout")
    public String logout(){
        Subject currentUser = SecurityUtils.getSubject();
        currentUser.logout();
        return "redirect:/acd";
    }

    /**
     * 3.2用户注册登录
     1、保险公司用户注册。
     先选择保险公司；
     输入账号个人信息；
     每个保险公司的账号总数限定；
     密码复杂度要求限定；
     2、修改密码；
     3、登录：会话有效期。
     保险公司录入的时候比较随意，导致保险公司查自己相关的事故验证比较困难。
     4、规范警务通、辅警通和微信保险公司录入，只能下拉选择，不能人工输入。
     5、调整原有历史数据。
     * @param sysUser
     * @return
     */
    @RequestMapping("register")
    @ResponseBody
    public JsonResultDto register(@RequestBody SysUser sysUser,HttpServletRequest request){

        String yhdm = sysUser.getYhdm();
        //校验用户是否已注册
        SysUser user = sysUserService.getUserInfoByYhdm(yhdm);
        if(user != null ){
            return  new JsonResultDto(EnumJsonResult.REGISTER_COPY.getValue(), EnumJsonResult.REGISTER_COPY.getText());
            //用户名已存在
        }
        //校验保险公司注册人数
        int count = sysUserService.queryAccountCountById(sysUser.getBxgsid());
        int maxCount = Integer.parseInt(AcdProperties.getString("acd_insure_person_count"));
        if(count==maxCount){
            return new JsonResultDto(EnumJsonResult.REGISTER_MAX.getValue(),EnumJsonResult.REGISTER_MAX.getText());
            //注册用户已达上限
        }
        //注册用户
        String mm = MD5PwdUtil.encodePassword(sysUser.getMm());
        sysUser.setMm(mm);
        sysUser.setZt(Constants.BXGS_YHZT);
        sysUser.setGxsj(new Date());
        boolean flag = sysUserService.registerUser(sysUser);
        if(flag){
            return new JsonResultDto(EnumJsonResult.REGISTER_SUCCESS.getValue(),EnumJsonResult.REGISTER_SUCCESS.getText());
            //注册成功
        }else{
            return new JsonResultDto(EnumJsonResult.REGISTER_FAILED.getValue(),EnumJsonResult.REGISTER_FAILED.getText());
        }
    }

    @RequestMapping(value = "updateUser")
    @ResponseBody
    public JsonResultDto updateAcdBxgsUser(@RequestBody LoginDto loginDto,HttpServletRequest request) {
        Map map = new HashMap<String, Object>();;
        SysUser user = sysUserService.getUserInfoByYhdm(loginDto.getYhdm());
        if(!user.getMm().equals(MD5PwdUtil.encodePassword(loginDto.getMm()))){
            return new JsonResultDto(EnumJsonResult.PWD_INCORRECT.getValue(),EnumJsonResult.PWD_INCORRECT.getText());
        }
        SysUser sysUser = new SysUser();
        sysUser.setYhdm(loginDto.getYhdm());
        sysUser.setMm(MD5PwdUtil.encodePassword(loginDto.getMmNew()));
        boolean flag = sysUserService.updateUser(sysUser);
        if(flag){
            return  new JsonResultDto(EnumJsonResult.PWD_SUCCESS.getValue(),EnumJsonResult.PWD_SUCCESS.getText());
        }else{
            return new JsonResultDto(EnumJsonResult.PWD_ERROR.getValue(),EnumJsonResult.PWD_ERROR.getText());
        }
    }
}
