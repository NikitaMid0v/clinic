alter table CLINIC_VISIT alter column VETERINARIAN_ID rename to VETERINARIAN_ID__U00991 ^
drop index IDX_CLINIC_VISIT_ON_VETERINARIAN ;
alter table CLINIC_VISIT add column VETERINARIAN_ID varchar(36) ;
