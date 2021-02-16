package com.sunland.frame.utils;


public class PageManager {
    private Integer page;
    private Integer pageSize;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public PageManager() {
    }
    public PageManager(Integer page, Integer pageSize) {
        this.page = ((page - 1) * pageSize)+1;
        this.pageSize = pageSize * page;
    }
}
