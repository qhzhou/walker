/**
 *
 * Copyright 2012 TeleNav, Inc. All rights reserved.
 * CalendarController.java
 *
 */
package com.ricelake.walker.module.calendar;

import android.content.Intent;

import com.ricelake.walker.R;
import com.ricelake.walker.module.main.MainController;
import com.ricelake.walker.mvc.AbstractController;
import com.ricelake.walker.mvc.DataForm;

/**
 *@author qhzhou@telenav.cn
 *@date 2012-4-5
 */
public class CalendarController extends AbstractController {

	@Override
	protected void setup(DataForm<String, Object> dataForm) {
		this.view = new CalendarView();
		this.model = new CalendarModel();

	}

	@Override
	protected boolean doControl(String action) {
		if (action.equalsIgnoreCase(ACTION_PREFIX_VIEW_EVENT_CLICK+R.id.calendar_footprint)) {
			Intent i = new Intent();
            i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            i.setClass(this, MainController.class);
            this.startActivity(i);
            this.overridePendingTransition(R.anim.slide_in_from_left, R.anim.slide_out_to_right);
            this.finish();
            return true;
		}
		return false;
	}

}
