// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.PedidoVenda;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Version;

privileged aspect PedidoVenda_Roo_Jpa_Entity {
    
    declare @type: PedidoVenda: @Entity;
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long PedidoVenda.id;
    
    @Version
    @Column(name = "version")
    private Integer PedidoVenda.version;
    
    public Long PedidoVenda.getId() {
        return this.id;
    }
    
    public void PedidoVenda.setId(Long id) {
        this.id = id;
    }
    
    public Integer PedidoVenda.getVersion() {
        return this.version;
    }
    
    public void PedidoVenda.setVersion(Integer version) {
        this.version = version;
    }
    
}
