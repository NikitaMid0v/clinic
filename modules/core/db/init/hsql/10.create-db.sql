-- begin CLINIC_VETERINARIAN
create table CLINIC_VETERINARIAN (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    USER_ID varchar(36) not null,
    HOURLY_RATE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end CLINIC_VETERINARIAN
-- begin CLINIC_PET_TYPE
create table CLINIC_PET_TYPE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    --
    primary key (ID)
)^
-- end CLINIC_PET_TYPE
-- begin CLINIC_PET
create table CLINIC_PET (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255) not null,
    PET_TYPE_ID varchar(36) not null,
    ONWER_ID varchar(36),
    --
    primary key (ID)
)^
-- end CLINIC_PET
-- begin CLINIC_VISIT
create table CLINIC_VISIT (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    PET_ID varchar(36) not null,
    HOURS_SPEND integer,
    AMOUNT decimal(19, 2) not null,
    VISIT_TYPE varchar(50) not null,
    VETERINARIAN_ID varchar(36),
    DATE_ timestamp not null,
    DESCRIPTIONS longvarchar,
    --
    primary key (ID)
)^
-- end CLINIC_VISIT
-- begin CLINIC_ONWER
create table CLINIC_ONWER (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    ADRESS_CITY varchar(255),
    ADRESS_STREET varchar(255),
    ADRESS_NUMBER_ varchar(255),
    --
    NAME varchar(255) not null,
    EMAIL varchar(400) not null,
    --
    primary key (ID)
)^
-- end CLINIC_ONWER
-- begin CLINIC_CONSUMABLE
create table CLINIC_CONSUMABLE (
    ID varchar(36) not null,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    TITLE longvarchar not null,
    PRICE decimal(19, 2) not null,
    --
    primary key (ID)
)^
-- end CLINIC_CONSUMABLE
-- begin CLINIC_VIZIT_CONSUMABLE_LINK
create table CLINIC_VIZIT_CONSUMABLE_LINK (
    VIZIT_ID varchar(36) not null,
    CONSUMABLE_ID varchar(36) not null,
    primary key (VIZIT_ID, CONSUMABLE_ID)
)^
-- end CLINIC_VIZIT_CONSUMABLE_LINK
