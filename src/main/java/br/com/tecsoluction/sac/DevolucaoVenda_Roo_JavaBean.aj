// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.DevolucaoVenda;
import br.com.tecsoluction.sac.Item;
import br.com.tecsoluction.sac.PedidoVenda;
import java.util.Date;
import java.util.Set;

privileged aspect DevolucaoVenda_Roo_JavaBean {
    
    public Date DevolucaoVenda.getDatarecebimento() {
        return this.datarecebimento;
    }
    
    public void DevolucaoVenda.setDatarecebimento(Date datarecebimento) {
        this.datarecebimento = datarecebimento;
    }
    
    public PedidoVenda DevolucaoVenda.getPedidovenda() {
        return this.pedidovenda;
    }
    
    public void DevolucaoVenda.setPedidovenda(PedidoVenda pedidovenda) {
        this.pedidovenda = pedidovenda;
    }
    
    public String DevolucaoVenda.getStatus() {
        return this.status;
    }
    
    public void DevolucaoVenda.setStatus(String status) {
        this.status = status;
    }
    
    public Set<Item> DevolucaoVenda.getItens() {
        return this.itens;
    }
    
    public void DevolucaoVenda.setItens(Set<Item> itens) {
        this.itens = itens;
    }
    
}
