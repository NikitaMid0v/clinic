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
);