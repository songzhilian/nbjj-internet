package com.sunland.frame.shiro;

import com.sunland.frame.bean.UserInfo;
import com.sunland.nbjj.common.utils.MD5PwdUtil;
import com.sunland.nbjj.po.admin.SysUser;
import com.sunland.nbjj.service.admin.ISysUserService;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by xdb on 2016/4/17.
 */
public class ShiroYdjwRealm extends AuthorizingRealm {
    private static final Logger logger = LoggerFactory.getLogger(ShiroYdjwRealm.class);

    @Autowired
    private ISysUserService sysUserService;

    /**
     * doGetAuthorizationInfo()方法可以理解为是权限验证
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        return null;
    }

    /**
     * doGetAuthenticationInfo( AuthenticationToken token) 理解为登陆验证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        return login(token);
    }

    protected AuthenticationInfo login(AuthenticationToken token) throws AuthenticationException{
        UsernamePasswordToken userToken = (UsernamePasswordToken)token;
        SysUser sysUser = sysUserService.getUserInfoByYhdm(userToken.getUsername());
        if(sysUser == null){
            sysUser = sysUserService.getAclUserInfoByYhdm(userToken.getUsername());
        }
        UserInfo userInfo = new UserInfo();
        if(sysUser != null){
            SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(sysUser.getYhdm(), sysUser.getMm(), getName());
            Subject subject = SecurityUtils.getSubject();
            Session session = subject.getSession();
            userInfo.setXm(sysUser.getXm());
            userInfo.setBmdm(sysUser.getBmdm());
            userInfo.setYhdm(sysUser.getYhdm());
            session.setAttribute("userInfo", userInfo);
            return simpleAuthenticationInfo;
        }else{
            throw new UnknownAccountException();
        }
    }

}
