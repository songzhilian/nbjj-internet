package com.sunland.frame.enumerate;

/**
 * Created by xdb on 2016/5/31.
 */
public enum EnumJsonResult implements IEnum {
    ZQMJ_LOGIN_SCCESS(2,"登录成功"),
    LOGIN_SUCCESS(1, "登录成功"),
    LOGIN_FAILED(0, "用户名或密码错误"),

    REGISTER_FAILED(0,"注册失败"),
    REGISTER_SUCCESS(1, "注册成功"),
    REGISTER_MAX(2,"注册用户已达上限"),
    REGISTER_COPY(3,"注册用户已存在"),
    REGISTER_SFZMHM_COPY(4,"身份证号码已注册"),
    REGISTER_SJHM_COPY(5,"手机号码已注册"),

    PWD_INCORRECT(0,"旧密码不正确"),
    PWD_SUCCESS(1,"修改成功"),
    PWD_ERROR(2,"修改密码异常"),

    SMS_SEND_SUCCESS(1, "发送成功"),
    SMS_SEND_FAILED(0, "发送失败"),

    ACD_SJHM_EXISTS(1, ""),
    ACD_SJHM_NOTEXISTS(0, "该事故不存在该手机号码"),

    ACD_CAPTCHA_NOTEXISTS(0, "未查询到该手机验证码信息，请稍后查询"),

    ACD_CAPTCHA_EXPIRE(0, "验证码已过期，请重新获取"),
    ACD_CAPTCHA_NOTEXPIRE(1, "");



    private int value;
    private String text;

    private EnumJsonResult(int value, String text){
        this.value = value;
        this.text = text;
    }

    @Override
    public int getValue() {
        return this.value;
    }

    @Override
    public String getText() {
        return this.text;
    }

    @Override
    public String toString() {
        return this.getText();
    }

    public static EnumJsonResult valueOf(int value) {
        for (EnumJsonResult e : EnumJsonResult.values()) {
            if (e.getValue() == value) {
                return e;
            }
        }
        return null;
    }
}
