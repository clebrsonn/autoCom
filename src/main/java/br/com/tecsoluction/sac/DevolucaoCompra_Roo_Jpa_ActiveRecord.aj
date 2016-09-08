// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.DevolucaoCompra;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DevolucaoCompra_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager DevolucaoCompra.entityManager;
    
    public static final List<String> DevolucaoCompra.fieldNames4OrderClauseFilter = java.util.Arrays.asList("datacompra", "pedidocompra", "status", "itens");
    
    public static final EntityManager DevolucaoCompra.entityManager() {
        EntityManager em = new DevolucaoCompra().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long DevolucaoCompra.countDevolucaoCompras() {
        return entityManager().createQuery("SELECT COUNT(o) FROM DevolucaoCompra o", Long.class).getSingleResult();
    }
    
    public static List<DevolucaoCompra> DevolucaoCompra.findAllDevolucaoCompras() {
        return entityManager().createQuery("SELECT o FROM DevolucaoCompra o", DevolucaoCompra.class).getResultList();
    }
    
    public static List<DevolucaoCompra> DevolucaoCompra.findAllDevolucaoCompras(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM DevolucaoCompra o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, DevolucaoCompra.class).getResultList();
    }
    
    public static DevolucaoCompra DevolucaoCompra.findDevolucaoCompra(Long id) {
        if (id == null) return null;
        return entityManager().find(DevolucaoCompra.class, id);
    }
    
    public static List<DevolucaoCompra> DevolucaoCompra.findDevolucaoCompraEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM DevolucaoCompra o", DevolucaoCompra.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<DevolucaoCompra> DevolucaoCompra.findDevolucaoCompraEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM DevolucaoCompra o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, DevolucaoCompra.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void DevolucaoCompra.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void DevolucaoCompra.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            DevolucaoCompra attached = DevolucaoCompra.findDevolucaoCompra(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void DevolucaoCompra.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void DevolucaoCompra.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public DevolucaoCompra DevolucaoCompra.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        DevolucaoCompra merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
