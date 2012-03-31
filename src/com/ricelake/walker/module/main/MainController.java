/**
 *
 * Copyright 2012 TeleNav, Inc. All rights reserved.
 * MainController.java
 *
 */
package com.ricelake.walker.module.main;

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
		// TODO Auto-generated method stub
		return false;
	}

}
