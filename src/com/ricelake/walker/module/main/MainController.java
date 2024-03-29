/**
 *
 * Copyright 2012 TeleNav, Inc. All rights reserved.
 * MainController.java
 *
 */
package com.ricelake.walker.module.main;


import android.content.Intent;

import com.ricelake.walker.R;
import com.ricelake.walker.module.calendar.CalendarController;
import com.ricelake.walker.mvc.AbstractController;
import com.ricelake.walker.mvc.DataForm;

/**
 *@author qhzhou@telenav.cn
 *@date 2012-3-31
 */
public class MainController extends AbstractController {

	@Override
	protected void setup(DataForm<String, Object> dataForm) {
		this.view = new MainView();
		this.model = new MainModel();

	}

	@Override
	protected boolean doControl(String action) {
		if (action.equalsIgnoreCase(ACTION_PREFIX_VIEW_EVENT_CLICK+R.id.main_calendar)) {
			Intent i = new Intent();
            i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            i.setClass(this, CalendarController.class);
            this.startActivity(i);
            this.overridePendingTransition(R.anim.slide_in_from_right, R.anim.slide_out_to_left);
            this.finish();
            return true;
		}
		return false;
	}

}
