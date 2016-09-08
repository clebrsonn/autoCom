// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Produto;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Produto_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Produto.entityManager;
    
    public static final List<String> Produto.fieldNames4OrderClauseFilter = java.util.Arrays.asList("codebar", "nome","categoria", "marca", "descricao", "precocusto", "precovenda", "item", "qtdmin", "datavalidade", "lote", "datacriacao", "fornecedor", "impostos");
    
    public static final EntityManager Produto.entityManager() {
        EntityManager em = new Produto().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Produto.countProdutoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Produto o", Long.class).getSingleResult();
    }
    
    public static List<Produto> Produto.findAllProdutoes() {
        return entityManager().createQuery("SELECT o FROM Produto o", Produto.class).getResultList();
    }
    
    public static List<Produto> Produto.findAllProdutoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Produto o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Produto.class).getResultList();
    }
    
    public static Produto Produto.findProduto(Long id) {
        if (id == null) return null;
        return entityManager().find(Produto.class, id);
    }
    
    public static List<Produto> Produto.findProdutoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Produto o", Produto.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Produto> Produto.findProdutoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Produto o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Produto.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Produto.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Produto.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Produto attached = Produto.findProduto(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Produto.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Produto.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Produto Produto.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Produto merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
