// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Cliente;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Cliente_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Cliente.entityManager;
    
    public static final List<String> Cliente.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nome", "cpf", "email", "facebook", "datanascimento");
    
    public static final EntityManager Cliente.entityManager() {
        EntityManager em = new Cliente().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Cliente.countClientes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Cliente o", Long.class).getSingleResult();
    }
    
    public static List<Cliente> Cliente.findAllClientes() {
        return entityManager().createQuery("SELECT o FROM Cliente o", Cliente.class).getResultList();
    }
    
    public static List<Cliente> Cliente.findAllClientes(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Cliente o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Cliente.class).getResultList();
    }
    
    public static Cliente Cliente.findCliente(Long id) {
        if (id == null) return null;
        return entityManager().find(Cliente.class, id);
    }
    
    public static List<Cliente> Cliente.findClienteEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Cliente o", Cliente.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Cliente> Cliente.findClienteEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Cliente o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Cliente.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Cliente.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Cliente.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Cliente attached = Cliente.findCliente(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Cliente.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Cliente.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Cliente Cliente.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Cliente merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
