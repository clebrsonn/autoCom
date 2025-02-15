// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Cotacao;
import br.com.tecsoluction.sac.DevolucaoCompra;
import br.com.tecsoluction.sac.DevolucaoVenda;
import br.com.tecsoluction.sac.Estoque;
import br.com.tecsoluction.sac.Item;
import br.com.tecsoluction.sac.PedidoCompra;
import br.com.tecsoluction.sac.PedidoVenda;
import br.com.tecsoluction.sac.Produto;
import br.com.tecsoluction.sac.Recebimento;

privileged aspect Item_Roo_JavaBean {
    
    public String Item.getCodigo() {
        return this.codigo;
    }
    
    public void Item.setCodigo(String codigo) {
        this.codigo = codigo;
    }
    
    public String Item.getDescricao() {
        return this.descricao;
    }
    
    public void Item.setDescricao(String descricao) {
        this.descricao = descricao;
    }
    
    public Double Item.getPrecounitario() {
        return this.precounitario;
    }
    
    public void Item.setPrecounitario(Double precounitario) {
        this.precounitario = precounitario;
    }
    
    public String Item.getQtd() {
        return this.qtd;
    }
    
    public void Item.setQtd(String qtd) {
        this.qtd = qtd;
    }
    
    public Double Item.getPrecotototal() {
        return this.precotototal;
    }
    
    public void Item.setPrecotototal(Double precotototal) {
        this.precotototal = precotototal;
    }
    
    public Produto Item.getProduto() {
        return this.produto;
    }
    
    public void Item.setProduto(Produto produto) {
        this.produto = produto;
    }
    
    public PedidoVenda Item.getPedidovenda() {
        return this.pedidovenda;
    }
    
    public void Item.setPedidovenda(PedidoVenda pedidovenda) {
        this.pedidovenda = pedidovenda;
    }
    
    public PedidoCompra Item.getPedidocompra() {
        return this.pedidocompra;
    }
    
    public void Item.setPedidocompra(PedidoCompra pedidocompra) {
        this.pedidocompra = pedidocompra;
    }
    
    public Recebimento Item.getRecebimento() {
        return this.recebimento;
    }
    
    public void Item.setRecebimento(Recebimento recebimento) {
        this.recebimento = recebimento;
    }
    
    public Cotacao Item.getCotacao() {
        return this.cotacao;
    }
    
    public void Item.setCotacao(Cotacao cotacao) {
        this.cotacao = cotacao;
    }
    
    public DevolucaoCompra Item.getDevolucaocompra() {
        return this.devolucaocompra;
    }
    
    public void Item.setDevolucaocompra(DevolucaoCompra devolucaocompra) {
        this.devolucaocompra = devolucaocompra;
    }
    
    public DevolucaoVenda Item.getDevolucaovenda() {
        return this.devolucaovenda;
    }
    
    public void Item.setDevolucaovenda(DevolucaoVenda devolucaovenda) {
        this.devolucaovenda = devolucaovenda;
    }
    
    public Estoque Item.getEstoque() {
        return this.estoque;
    }
    
    public void Item.setEstoque(Estoque estoque) {
        this.estoque = estoque;
    }
    
}
