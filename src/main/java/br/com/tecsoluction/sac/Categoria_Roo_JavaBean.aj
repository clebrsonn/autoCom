// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Categoria;

privileged aspect Categoria_Roo_JavaBean {
    
    public String Categoria.getNome() {
        return this.nome;
    }
    
    public void Categoria.setNome(String nome) {
        this.nome = nome;
    }
    
    public Categoria Categoria.getCategoriapai() {
        return this.categoriapai;
    }
    
    public void Categoria.setCategoriapai(Categoria categoriapai) {
        this.categoriapai = categoriapai;
    }
    
}
