/**
 *
 * Copyright 2012 TeleNav, Inc. All rights reserved.
 * MainView.java
 *
 */
package com.ricelake.walker.module.main;

import android.view.View;

import com.ricelake.walker.R;
import com.ricelake.walker.mvc.AbstractView;

/**
 * @author qhzhou@telenav.cn
 * @date 2012-3-31
 */
public class MainView extends AbstractView {

	@Override
	public boolean handleUiEvent(String action, View view) {
		if (isViewAction(action)) {
			switch (view.getId()) {
			case R.id.main_footprint:

				break;
			case R.id.main_calendar:
				break;
			case R.id.main_friend:

				break;
			case R.id.main_setting:

				break;

			default:
				break;
			}

		} else if (isModelAction(action)) {

		}
		return false;
	}

}
