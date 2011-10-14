// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.rooinaction.cmsapp.domain;

import com.rooinaction.cmsapp.domain.CourseDetails;
import java.lang.Long;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CourseDetails_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager CourseDetails.entityManager;
    
    @Transactional
    public void CourseDetails.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void CourseDetails.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            CourseDetails attached = CourseDetails.findCourseDetails(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void CourseDetails.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void CourseDetails.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public CourseDetails CourseDetails.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        CourseDetails merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager CourseDetails.entityManager() {
        EntityManager em = new CourseDetails().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long CourseDetails.countCourseDetailses() {
        return entityManager().createQuery("SELECT COUNT(o) FROM CourseDetails o", Long.class).getSingleResult();
    }
    
    public static List<CourseDetails> CourseDetails.findAllCourseDetailses() {
        return entityManager().createQuery("SELECT o FROM CourseDetails o", CourseDetails.class).getResultList();
    }
    
    public static CourseDetails CourseDetails.findCourseDetails(Long id) {
        if (id == null) return null;
        return entityManager().find(CourseDetails.class, id);
    }
    
    public static List<CourseDetails> CourseDetails.findCourseDetailsEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM CourseDetails o", CourseDetails.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
