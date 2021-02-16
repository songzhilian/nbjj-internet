package com.sunland.nbjj.common.utils;

import javax.net.ssl.*;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Map;
import java.util.Set;

/**
 * 服务访问工具类
 * Created by xdb on 2016-3-31.
 */
public abstract class WebUtil {

    private static final String DEFAULT_CHARSET = "UTF-8";
    private static final int CONNECT_TIMEOUT = 10000000;
    private static final int READ_TIMEOUT = 10000000;

    private static class DefaultTrustManager implements X509TrustManager {
        public X509Certificate[] getAcceptedIssuers() {
            return null;
        }

        public void checkClientTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        }

        public void checkServerTrusted(X509Certificate[] chain, String authType) throws CertificateException {
        }
    }

    public static String doPost(String url, Map<String, String> params) throws IOException {
        String charset = DEFAULT_CHARSET;
        String ctype = "application/x-www-form-urlencoded;charset=" + charset;
        String query = buildQuery(params, charset);
        byte[] content = {};
        if (query != null) {
            content = query.getBytes(charset);
        }
        HttpURLConnection conn = null;
        OutputStream out = null;
        String rsp = null;
        try {
            try {
                conn = getConnection(new URL(url), "POST", ctype, null);
                conn.setConnectTimeout(CONNECT_TIMEOUT);
                conn.setReadTimeout(READ_TIMEOUT);
            } catch (IOException e) {
                throw e;
            }
            try {
                out = conn.getOutputStream();
                out.write(content);
                rsp = getResponseAsString(conn);
            } catch (IOException e) {
                throw e;
            }
        } finally {
            if (out != null) {
                out.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rsp;
    }

    public static String doGet(String url, Map<String, String> params) throws IOException {
        String charset = DEFAULT_CHARSET;
        String ctype = "application/x-www-form-urlencoded;charset=" + charset;
        String query = buildQuery(params, charset);
        if (query != null) {
            url = url + "?" + query;
        }
        HttpURLConnection conn = null;
        String rsp = null;
        try {
            try {
                conn = getConnection(new URL(url), "GET", ctype, null);
                conn.setConnectTimeout(CONNECT_TIMEOUT);
                conn.setReadTimeout(READ_TIMEOUT);
                rsp = getResponseAsString(conn);
            } catch (IOException e) {
                throw e;
            }
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rsp;
    }

    public static String doGet(String url, Map<String, String> params, String authorization) throws IOException {
        String charset = DEFAULT_CHARSET;
        String ctype = "application/x-www-form-urlencoded;charset=" + charset;
        String query = buildQuery(params, charset);
        if (query != null) {
            url = url + "?" + query;
        }
        HttpURLConnection conn = null;
        String rsp = null;
        try {
            try {
                conn = getConnection(new URL(url), "GET", ctype, null);
                conn.setRequestProperty("Authorization", authorization);
                conn.setConnectTimeout(CONNECT_TIMEOUT);
                conn.setReadTimeout(READ_TIMEOUT);

                rsp = getResponseAsString(conn);
            } catch (IOException e) {
                throw e;
            }
        } finally {
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rsp;
    }

    private static HttpURLConnection getConnection(URL url, String method, String ctype, Map<String, String> headerMap) throws IOException {
        HttpURLConnection conn = null;
        if ("https".equals(url.getProtocol())) {
            SSLContext ctx = null;
            try {
                ctx = SSLContext.getInstance("TLS");
                ctx.init(new KeyManager[0], new TrustManager[]{new DefaultTrustManager()}, new SecureRandom());
            } catch (Exception e) {
                throw new IOException(e);
            }
            HttpsURLConnection connHttps = (HttpsURLConnection) url.openConnection();
            connHttps.setSSLSocketFactory(ctx.getSocketFactory());
            connHttps.setHostnameVerifier(new HostnameVerifier() {
                public boolean verify(String hostname, SSLSession session) {
                    return true;// 默认都认证通过
                }
            });
            conn = connHttps;
        } else {
            conn = (HttpURLConnection) url.openConnection();
        }

        conn.setRequestMethod(method);
        conn.setDoInput(true);
        conn.setDoOutput(true);
        conn.setRequestProperty("Accept", "text/xml,text/javascript,text/html");
        conn.setRequestProperty("User-Agent", "gy-top-java");
        conn.setRequestProperty("Content-Type", ctype);
        if (headerMap != null) {
            for (Map.Entry<String, String> entry : headerMap.entrySet()) {
                conn.setRequestProperty(entry.getKey(), entry.getValue());
            }
        }
        return conn;
    }

    public static String buildQuery(Map<String, String> params, String charset) throws IOException {
        if (params == null || params.isEmpty()) {
            return null;
        }

        StringBuilder query = new StringBuilder();
        Set<Map.Entry<String, String>> entries = params.entrySet();
        boolean hasParam = false;

        for (Map.Entry<String, String> entry : entries) {
            String name = entry.getKey();
            String value = entry.getValue();
            // 忽略参数名或参数值为空的参数
            if (StringUtil.areNotEmpty(name, value)) {
                if (hasParam) {
                    query.append("&");
                } else {
                    hasParam = true;
                }

                query.append(name).append("=").append(URLEncoder.encode(value, charset));
            }
        }

        return query.toString();
    }

    protected static String getResponseAsString(HttpURLConnection conn) throws IOException {
        String charset = getResponseCharset(conn.getContentType());
        InputStream es = conn.getErrorStream();
        if (es == null) {
            return getStreamAsString(conn.getInputStream(), charset);
        } else {
            String msg = getStreamAsString(es, charset);
            if (StringUtil.isEmpty(msg)) {
                throw new IOException(conn.getResponseCode() + ":" + conn.getResponseMessage());
            } else {
                throw new IOException(msg);
            }
        }
    }

    private static String getStreamAsString(InputStream stream, String charset) throws IOException {
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(stream, charset));
            StringWriter writer = new StringWriter();

            char[] chars = new char[256];
            int count = 0;
            while ((count = reader.read(chars)) > 0) {
                writer.write(chars, 0, count);
            }

            return writer.toString();
        } finally {
            if (stream != null) {
                stream.close();
            }
        }
    }

    private static String getResponseCharset(String ctype) {
        String charset = DEFAULT_CHARSET;

        if (!StringUtil.isEmpty(ctype)) {
            String[] params = ctype.split(";");
            for (String param : params) {
                param = param.trim();
                if (param.startsWith("charset")) {
                    String[] pair = param.split("=", 2);
                    if (pair.length == 2) {
                        if (!StringUtil.isEmpty(pair[1])) {
                            charset = pair[1].trim();
                        }
                    }
                    break;
                }
            }
        }

        return charset;
    }

    public static String doPost(String url, Map<String, String> params, Map<String, byte[]> byteMap) throws IOException {
        String charset = DEFAULT_CHARSET;
        String boundary = "---------------------------11677305721662";
        String ctype = "multipart/form-data;charset=" + charset + ";boundary=" + boundary;
        HttpURLConnection conn = null;
        OutputStream out = null;
        String rsp = null;
        try {
            try {
                conn = getConnection(new URL(url), "POST", ctype, null);
                conn.setConnectTimeout(CONNECT_TIMEOUT);
                conn.setReadTimeout(READ_TIMEOUT);
            } catch (IOException e) {
                throw e;
            }
            try {
                out = new DataOutputStream(conn.getOutputStream());
                byte[] startboundary = ("\r\n--" + boundary + "\r\n").getBytes("UTF-8");
                byte[] endboundary = ("\r\n--" + boundary + "--\r\n").getBytes("UTF-8");
                String textTemplate = "Content-Disposition:form-data;name=%s\r\nContent-Type:text/plain\r\n\r\n%s";
                Set<Map.Entry<String, String>> textEntries = params.entrySet();
                StringBuffer strBuf = new StringBuffer();
                for (Map.Entry<String, String> entry : textEntries) {
                    String inputValue = entry.getValue();
                    String inputName = entry.getKey();
                    if (inputValue == null) {
                        continue;
                    }
                    out.write(startboundary, 0, startboundary.length);
                    String text = String.format(textTemplate, inputName, inputValue);
                    byte[] textByte = text.getBytes("UTF-8");
                    out.write(textByte);
                }


                //file
                String fileTemplate = "Content-Disposition:form-data;name=%s;filename=%s\r\nContent-Type:%s\r\n\r\n";
                Set<Map.Entry<String, byte[]>> entries = byteMap.entrySet();
                for (Map.Entry<String, byte[]> entry : entries) {
                    String key = String.format(fileTemplate, entry.getKey(), entry.getKey() + ".xml", "application/octet-stream");
                    out.write(startboundary, 0, startboundary.length);
                    byte[] keyByte = key.getBytes(charset);
                    out.write(keyByte, 0, keyByte.length);
                    byte[] value = entry.getValue();
                    out.write(value, 0, value.length);
                }
                out.write(endboundary, 0, endboundary.length);
                rsp = getResponseAsString(conn);
            } catch (IOException e) {
                throw e;
            }

        } finally {
            if (out != null) {
                out.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rsp;
    }

    public static String doPost(String url, Map<String, String> headerMap, String contentStr) throws IOException {
        String charset = DEFAULT_CHARSET;
        String ctype = "application/json;charset=utf-8";
        HttpURLConnection conn = null;
        OutputStream out = null;
        String rsp = null;
        try {
            try {
                conn = getConnection(new URL(url), "POST", ctype, headerMap);
                conn.setConnectTimeout(CONNECT_TIMEOUT);
                conn.setReadTimeout(READ_TIMEOUT);
            } catch (IOException e) {
                throw e;
            }
            try {
                out = new DataOutputStream(conn.getOutputStream());
                out.write(contentStr.getBytes("UTF-8"));
                rsp = getResponseAsString(conn);
            } catch (IOException e) {
                throw e;
            }
        } finally {
            if (out != null) {
                out.close();
            }
            if (conn != null) {
                conn.disconnect();
            }
        }
        return rsp;
    }

}
