package com.company.clinic.web.screens.onwer;

import com.haulmont.cuba.gui.screen.*;
import com.company.clinic.entity.Onwer;

@UiController("clinic_Onwer.browse")
@UiDescriptor("onwer-browse.xml")
@LookupComponent("onwersTable")
@LoadDataBeforeShow
public class OnwerBrowse extends StandardLookup<Onwer> {
}