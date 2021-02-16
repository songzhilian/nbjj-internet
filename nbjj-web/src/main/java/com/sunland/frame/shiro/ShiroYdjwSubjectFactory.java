package com.sunland.frame.shiro;

import com.sunland.nbjj.service.admin.ISecurityMonitorService;
import org.apache.shiro.mgt.DefaultSubjectFactory;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.subject.SubjectContext;
import org.apache.shiro.web.subject.WebSubjectContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * Created by xdb on 2016/4/17.
 *
 * 1.Subject：主体，代表了当前“用户”，这个用户不一定是一个具体的人，与当前应用交互的任何东西都是Subject，如网络爬虫，机器人等；即一个抽象概念；
 * 所有Subject都绑定到SecurityManager，与Subject的所有交互都会委托给SecurityManager；可以把Subject认为是一个门面；SecurityManager才是实际的执行者；
 * 2.SecurityManager：安全管理器；即所有与安全有关的操作都会与SecurityManager交互；且它管理着所有Subject；可以看出它是Shiro的核心，
 * 它负责与后边介绍的其他组件进行交互，如果学习过SpringMVC，你可以把它看成DispatcherServlet前端控制器；
 *
 */
@Service
public class ShiroYdjwSubjectFactory extends DefaultSubjectFactory {

    @Autowired
    private ISecurityMonitorService securityMonitorService;

    @Override
    public Subject createSubject(SubjectContext context) {
        if(!(context instanceof WebSubjectContext)){
            return super.createSubject(context);
        }
        WebSubjectContext wsc = (WebSubjectContext) context;
        org.apache.shiro.mgt.SecurityManager securityManager = wsc.resolveSecurityManager();
        Session session = wsc.resolveSession();
        boolean sessionEnabled = wsc.isSessionCreationEnabled();
        PrincipalCollection principals = wsc.resolvePrincipals();
        boolean authenticated = wsc.resolveAuthenticated();
        String host = wsc.resolveHost();
        ServletRequest request = wsc.resolveServletRequest();
        ServletResponse response = wsc.resolveServletResponse();

        return new ShiroYdjwSubject(securityMonitorService,principals, authenticated, host, session, sessionEnabled, request, response, securityManager);
    }
}
