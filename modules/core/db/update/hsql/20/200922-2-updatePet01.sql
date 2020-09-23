alter table CLINIC_PET add constraint FK_CLINIC_PET_ON_ONWER foreign key (ONWER_ID) references CLINIC_ONWER(ID);
create index IDX_CLINIC_PET_ON_ONWER on CLINIC_PET (ONWER_ID);
