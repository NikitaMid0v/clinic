package com.company.clinic.web.screens.onwer;

import com.haulmont.cuba.gui.screen.*;
import com.company.clinic.entity.Onwer;

@UiController("clinic_Onwer.edit")
@UiDescriptor("onwer-edit.xml")
@EditedEntityContainer("onwerDc")
@LoadDataBeforeShow
public class OnwerEdit extends StandardEditor<Onwer> {
}