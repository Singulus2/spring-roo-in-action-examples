// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.rooinaction.coursemanager.model;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.Table;

privileged aspect Payment_Roo_Jpa_Entity {
    
    declare @type: Payment: @Entity;
    
    declare @type: Payment: @Table(name = "payment");
    
    @EmbeddedId
    private PaymentPK Payment.id;
    
    public PaymentPK Payment.getId() {
        return this.id;
    }
    
    public void Payment.setId(PaymentPK id) {
    }
    
}
