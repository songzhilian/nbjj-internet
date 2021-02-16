package com.sunland.nbjj.dto.admin;

/**
 * Created by xdb on 2016/4/17.
 *
 * 请求返回信息DTO
 */
public class JsonResultDto {

    private int status;
    private String message;

    public JsonResultDto(int status, String message) {
        this.status = status;
        this.message = message;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
