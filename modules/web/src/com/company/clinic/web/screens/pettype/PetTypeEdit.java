package com.company.clinic.web.screens.pettype;

import com.company.clinic.entity.Pet;
import com.haulmont.cuba.gui.model.CollectionLoader;
import com.haulmont.cuba.gui.screen.*;
import com.company.clinic.entity.PetType;

import javax.inject.Inject;

@UiController("clinic_PetType.edit")
@UiDescriptor("pet-type-edit.xml")
@EditedEntityContainer("petTypeDc")
@LoadDataBeforeShow
public class PetTypeEdit extends StandardEditor<PetType> {

    @Inject
    private CollectionLoader<Pet> petsDl;

    @Subscribe
    public void onBeforeShow(BeforeShowEvent event) {
//        petsDl.setParameter("petType", getEditedEntity());
//        getScreenData().loadAll();
    }

}