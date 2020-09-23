package com.company.clinic.entity;

import com.haulmont.chile.core.annotations.NamePattern;
import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Table(name = "CLINIC_PET")
@Entity(name = "clinic_Pet")
@NamePattern("%s|name")
public class Pet extends StandardEntity {
    private static final long serialVersionUID = 3013629383117167539L;

    @NotNull
    @Column(name = "NAME", nullable = false)
    private String name;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PET_TYPE_ID")
    private PetType petType;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ONWER_ID")
    private Onwer onwer;

    public Onwer getOnwer() {
        return onwer;
    }

    public void setOnwer(Onwer onwer) {
        this.onwer = onwer;
    }

    public PetType getPetType() {
        return petType;
    }

    public void setPetType(PetType petType) {
        this.petType = petType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}