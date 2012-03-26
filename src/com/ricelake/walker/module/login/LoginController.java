package com.ricelake.walker.module.login;

import android.view.Window;

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
        // TODO Auto-generated method stub
        return false;
    }

}
