alter table CLINIC_VISIT add constraint FK_CLINIC_VISIT_ON_PET foreign key (PET_ID) references CLINIC_PET(ID);
alter table CLINIC_VISIT add constraint FK_CLINIC_VISIT_ON_VETERINARIAN foreign key (VETERINARIAN_ID) references CLINIC_VENERINARIAN(ID);
create index IDX_CLINIC_VISIT_ON_PET on CLINIC_VISIT (PET_ID);
create index IDX_CLINIC_VISIT_ON_VETERINARIAN on CLINIC_VISIT (VETERINARIAN_ID);