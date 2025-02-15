// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package br.com.tecsoluction.sac;

import br.com.tecsoluction.sac.Usuario;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Usuario_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Usuario.entityManager;
    
    public static final List<String> Usuario.fieldNames4OrderClauseFilter = java.util.Arrays.asList("nome", "senha", "email", "tipo");
    
    public static final EntityManager Usuario.entityManager() {
        EntityManager em = new Usuario().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Usuario.countUsuarios() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Usuario o", Long.class).getSingleResult();
    }
    
    public static List<Usuario> Usuario.findAllUsuarios() {
        return entityManager().createQuery("SELECT o FROM Usuario o", Usuario.class).getResultList();
    }
    
    public static List<Usuario> Usuario.findAllUsuarios(String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Usuario o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Usuario.class).getResultList();
    }
    
    public static Usuario Usuario.findUsuario(Long id) {
        if (id == null) return null;
        return entityManager().find(Usuario.class, id);
    }
    
    public static List<Usuario> Usuario.findUsuarioEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Usuario o", Usuario.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    public static List<Usuario> Usuario.findUsuarioEntries(int firstResult, int maxResults, String sortFieldName, String sortOrder) {
        String jpaQuery = "SELECT o FROM Usuario o";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        return entityManager().createQuery(jpaQuery, Usuario.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Usuario.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Usuario.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Usuario attached = Usuario.findUsuario(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Usuario.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Usuario.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Usuario Usuario.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Usuario merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
