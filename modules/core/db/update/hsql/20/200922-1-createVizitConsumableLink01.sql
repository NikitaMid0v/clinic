create table CLINIC_VIZIT_CONSUMABLE_LINK (
    VIZIT_ID varchar(36) not null,
    CONSUMABLE_ID varchar(36) not null,
    primary key (VIZIT_ID, CONSUMABLE_ID)
);
