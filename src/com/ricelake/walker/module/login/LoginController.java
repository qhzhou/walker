package com.ricelake.walker.module.login;

import android.content.Intent;
import android.view.Window;

import com.ricelake.walker.module.main.MainController;
import com.ricelake.walker.mvc.AbstractController;
import com.ricelake.walker.mvc.DataForm;

public class LoginController extends AbstractController
{

    @Override
    protected void setup(DataForm<String, Object> dataForm)
    {
        this.model = new LoginModel();
        this.view = new LoginView();
    }

    @Override
    protected boolean doControl(String action)
    {
    	if (action.equalsIgnoreCase(ACTION_PREFIX_MODEL+ILoginConstants.MODEL_EVENT_LOGIN_SUCCESSFUL)) {
            Intent i = new Intent();
            i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            i.setClass(this, MainController.class);
            this.startActivity(i);
            this.finish();
            return true;
    	}
        return false;
    }

}
