// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Mesa;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect Mesa_Roo_Jpa_Entity {
    
    declare @type: Mesa: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Mesa.id;
    
    @Version
    @Column(name = "version")
    private Integer Mesa.version;
    
    public Long Mesa.getId() {
        return this.id;
    }
    
    public void Mesa.setId(Long id) {
        this.id = id;
    }
    
    public Integer Mesa.getVersion() {
        return this.version;
    }
    
    public void Mesa.setVersion(Integer version) {
        this.version = version;
    }
    
}
