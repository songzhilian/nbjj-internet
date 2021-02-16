package com.sunland.frame.shiro;

import com.sunland.nbjj.service.admin.ISecurityMonitorService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.web.subject.support.WebDelegatingSubject;
import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Created by xdb on 2016/4/17.
 */
public class ShiroYdjwSubject extends WebDelegatingSubject {

    @Autowired
    private ISecurityMonitorService securityMonitorService;

    public ShiroYdjwSubject(ISecurityMonitorService securityMonitorService, PrincipalCollection principals, boolean authenticated, String host, Session session,
                            ServletRequest request, ServletResponse response, SecurityManager securityManager) {
        super(principals, authenticated, host, session, request, response, securityManager);
    }

    public ShiroYdjwSubject(ISecurityMonitorService securityMonitorService, PrincipalCollection principals, boolean authenticated, String host, Session session,
                            boolean sessionEnabled, ServletRequest request, ServletResponse response, SecurityManager securityManager) {
        super(principals, authenticated, host, session, sessionEnabled, request, response, securityManager);
    }

    @Override
    public void login(AuthenticationToken token) throws AuthenticationException {
        super.login(token); //自动调用realm中的doGetAuthenticationInfo方法
    }
}
