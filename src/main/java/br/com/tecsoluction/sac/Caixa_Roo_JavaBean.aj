// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Caixa;
import br.com.tecsoluction.sac.PedidoVenda;
import java.util.Date;
import java.util.Set;

privileged aspect Caixa_Roo_JavaBean {
    
    public String Caixa.getNumero() {
        return this.numero;
    }
    
    public void Caixa.setNumero(String numero) {
        this.numero = numero;
    }
    
    public Set<PedidoVenda> Caixa.getPedidodevenda() {
        return this.pedidodevenda;
    }
    
    public void Caixa.setPedidodevenda(Set<PedidoVenda> pedidodevenda) {
        this.pedidodevenda = pedidodevenda;
    }
    
    public Date Caixa.getDatacriacao() {
        return this.datacriacao;
    }
    
    public void Caixa.setDatacriacao(Date datacriacao) {
        this.datacriacao = datacriacao;
    }
    
    public Double Caixa.getTotal() {
        return this.total;
    }
    
    public void Caixa.setTotal(Double total) {
        this.total = total;
    }
    
}
