// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Pagamento;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Pagamento_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Pagamento.entityManager;
    
    public static final List<String> Pagamento.fieldNames4OrderClauseFilter = java.util.Arrays.asList("pedidovenda", "formaspagamento", "total", "datapagamento");
    
    public static final EntityManager Pagamento.entityManager() {
        EntityManager em = new Pagamento().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Pagamento.countPagamentoes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Pagamento o", Long.class).getSingleResult();
    }
    
    public static List<Pagamento> Pagamento.findAllPagamentoes() {
        return entityManager().createQuery("SELECT o FROM Pagamento o", Pagamento.class).getResultList();
    }
    
    public static List<Pagamento> Pagamento.findAllPagamentoes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Pagamento o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Pagamento.class).getResultList();
    }
    
    public static Pagamento Pagamento.findPagamento(Long id) {
        if (id == null) return null;
        return entityManager().find(Pagamento.class, id);
    }
    
    public static List<Pagamento> Pagamento.findPagamentoEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Pagamento o", Pagamento.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Pagamento> Pagamento.findPagamentoEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Pagamento o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Pagamento.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Pagamento.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Pagamento.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Pagamento attached = Pagamento.findPagamento(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Pagamento.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Pagamento.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Pagamento Pagamento.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Pagamento merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
