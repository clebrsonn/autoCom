// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Categoria;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Categoria_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Categoria.entityManager;
    
    public static final List<String> Categoria.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nome", "categoriapai");
    
    public static final EntityManager Categoria.entityManager() {
        EntityManager em = new Categoria().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Categoria.countCategorias() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Categoria o", Long.class).getSingleResult();
    }
    
    public static List<Categoria> Categoria.findAllCategorias() {
        return entityManager().createQuery("SELECT o FROM Categoria o", Categoria.class).getResultList();
    }
    
    public static List<Categoria> Categoria.findAllCategorias(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Categoria o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Categoria.class).getResultList();
    }
    
    public static Categoria Categoria.findCategoria(Long id) {
        if (id == null) return null;
        return entityManager().find(Categoria.class, id);
    }
    
    public static List<Categoria> Categoria.findCategoriaEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Categoria o", Categoria.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Categoria> Categoria.findCategoriaEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Categoria o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Categoria.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Categoria.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Categoria.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Categoria attached = Categoria.findCategoria(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Categoria.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Categoria.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Categoria Categoria.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Categoria merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
