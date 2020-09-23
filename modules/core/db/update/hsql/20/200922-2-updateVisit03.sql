alter table CLINIC_VISIT add constraint FK_CLINIC_VISIT_ON_PET foreign key (PET_ID) references CLINIC_PET(ID);
create index IDX_CLINIC_VISIT_ON_PET on CLINIC_VISIT (PET_ID);
