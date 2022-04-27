package com.cn.travel.cms.scenicSpotComment.entity;

import com.cn.travel.base.entity.BaseDomain;

import java.sql.Timestamp;

@SuppressWarnings("serial")
public class ScenicSpotComment extends BaseDomain {

    private String pjyh;

    private String pjcp;

    private String pjcpname;

    private String pjcpimgurl;

    private String pjdj;

    private String pjnr;

    private Timestamp pjtime;

    private String pjbz;

    private String pjcptype;

    public String getPjyh() {
        return pjyh;
    }

    public void setPjyh(String pjyh) {
        this.pjyh = pjyh;
    }

    public String getPjcp() {
        return pjcp;
    }

    public void setPjcp(String pjcp) {
        this.pjcp = pjcp;
    }

    public String getPjdj() {
        return pjdj;
    }

    public void setPjdj(String pjdj) {
        this.pjdj = pjdj;
    }

    public String getPjnr() {
        return pjnr;
    }

    public void setPjnr(String pjnr) {
        this.pjnr = pjnr;
    }

    public Timestamp getPjtime() {
        return pjtime;
    }

    public void setPjtime(Timestamp pjtime) {
        this.pjtime = pjtime;
    }

    public String getPjbz() {
        return pjbz;
    }

    public void setPjbz(String pjbz) {
        this.pjbz = pjbz;
    }

    public String getPjcpname() {
        return pjcpname;
    }

    public void setPjcpname(String pjcpname) {
        this.pjcpname = pjcpname;
    }

    public String getPjcpimgurl() {
        return pjcpimgurl;
    }

    public void setPjcpimgurl(String pjcpimgurl) {
        this.pjcpimgurl = pjcpimgurl;
    }

    public String getPjcptype() {
        return pjcptype;
    }

    public void setPjcptype(String pjcptype) {
        this.pjcptype = pjcptype;
    }
}
