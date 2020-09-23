package com.company.clinic.entity;

import com.haulmont.cuba.core.entity.StandardEntity;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PositiveOrZero;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Table(name = "CLINIC_VISIT")
@Entity(name = "clinic_Visit")
public class Visit extends StandardEntity {
    private static final long serialVersionUID = -6830312991801820485L;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "PET_ID")
    private Pet pet;

    @Column(name = "HOURS_SPEND")
    @PositiveOrZero
    private Integer hoursSpend;

    @NotNull
    @Column(name = "AMOUNT", nullable = false)
    private BigDecimal amount;

    @JoinTable(name = "CLINIC_VIZIT_CONSUMABLE_LINK",
            joinColumns = @JoinColumn(name = "VIZIT_ID"),
            inverseJoinColumns = @JoinColumn(name = "CONSUMABLE_ID"))
    @ManyToMany
    private List<Consumable> consumable;

    @Column(name = "VISIT_TYPE", nullable = false)
    @NotNull
    private String visitType;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "VETERINARIAN_ID")
    private Veterinarian veterinarian;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "DATE_", nullable = false)
    @NotNull
    private Date date;

    @Lob
    @Column(name = "DESCRIPTIONS")
    private String descriptions;

    public VisitType getVisitType() {
        return visitType == null ? null : VisitType.fromId(visitType);
    }

    public void setVisitType(VisitType visitType) {
        this.visitType = visitType == null ? null : visitType.getId();
    }

    public List<Consumable> getConsumable() {
        return consumable;
    }

    public void setConsumable(List<Consumable> consumable) {
        this.consumable = consumable;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public Integer getHoursSpend() {
        return hoursSpend;
    }

    public void setHoursSpend(Integer hoursSpend) {
        this.hoursSpend = hoursSpend;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Veterinarian getVeterinarian() {
        return veterinarian;
    }

    public void setVeterinarian(Veterinarian veterinarian) {
        this.veterinarian = veterinarian;
    }

    public Pet getPet() {
        return pet;
    }

    public void setPet(Pet pet) {
        this.pet = pet;
    }
}