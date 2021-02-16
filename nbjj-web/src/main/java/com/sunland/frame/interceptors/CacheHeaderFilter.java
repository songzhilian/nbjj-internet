package com.sunland.frame.interceptors;

import javax.servlet.*;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Marty on 2016/4/16.
 *
 * 为Response设置客户端缓存控制Header的Filter，可以更好的把服务器的一些静态文件，例如图片钝化到本地浏览器缓存中
 * 例如，客户端浏览器访问服务器，如果是第一次则会把服务器的相关静态文件存储到本地浏览器
 *
 *
 */
public class CacheHeaderFilter implements Filter{

    private static final String PARAM_EXPIRES_SECONDS = "expires_seconds";
    private long expiresSeconds;

    public static final long HALF_MONTH_SECONDS = 60 * 60 * 24 * 15;
    public static final String HEADERS_EXPIRES = "Expires";
    public static final String HEADERS_CACHE_CONTROL = "Cache-Control";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        //获取web.xml中配置的expires_seconds值
        String expiresSecondsParam = filterConfig.getInitParameter(PARAM_EXPIRES_SECONDS);

        if(expiresSecondsParam != null && !expiresSecondsParam.equals("")){
            expiresSeconds = Long.valueOf(expiresSecondsParam);
        } else {
            expiresSeconds = CacheHeaderFilter.HALF_MONTH_SECONDS;
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        setExpiresHeader((HttpServletResponse)response, expiresSeconds);
        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {

    }

    /**
     * 设置客户端缓存过期时间
     * @param response
     * @param expiresSeconds
     */
    public static void setExpiresHeader(HttpServletResponse response, long expiresSeconds){
        // 针对Http1.0的header,设置一个过期时间.
        response.setDateHeader(HEADERS_EXPIRES, System.currentTimeMillis() + (expiresSeconds * 1000));
        // 针对Http1.1的header,设置一个从现在之后时间.
        response.setHeader(HEADERS_CACHE_CONTROL, "private, max-age=" + expiresSeconds);
    }
}
