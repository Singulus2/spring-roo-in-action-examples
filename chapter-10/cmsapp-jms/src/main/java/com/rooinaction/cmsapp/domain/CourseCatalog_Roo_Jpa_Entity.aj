// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rooinaction.cmsapp.domain;

import java.lang.Integer;
import java.lang.Long;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect CourseCatalog_Roo_Jpa_Entity {
    
    declare @type: CourseCatalog: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long CourseCatalog.id;
    
    @Version
    @Column(name = "version")
    private Integer CourseCatalog.version;
    
    public Long CourseCatalog.getId() {
        return this.id;
    }
    
    public void CourseCatalog.setId(Long id) {
        this.id = id;
    }
    
    public Integer CourseCatalog.getVersion() {
        return this.version;
    }
    
    public void CourseCatalog.setVersion(Integer version) {
        this.version = version;
    }
    
}
