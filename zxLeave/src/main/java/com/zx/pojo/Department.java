package com.zx.pojo;

public class Department {
    private Integer departmentid;

    private String abteilungname;

    private Integer abteilungparentid;

    public Integer getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(Integer departmentid) {
        this.departmentid = departmentid;
    }

    public String getAbteilungname() {
        return abteilungname;
    }

    public void setAbteilungname(String abteilungname) {
        this.abteilungname = abteilungname == null ? null : abteilungname.trim();
    }

    public Integer getAbteilungparentid() {
        return abteilungparentid;
    }

    public void setAbteilungparentid(Integer abteilungparentid) {
        this.abteilungparentid = abteilungparentid;
    }
}