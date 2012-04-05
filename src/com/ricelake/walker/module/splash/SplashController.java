package com.ricelake.walker.module.splash;

import android.content.Intent;
import android.os.Bundle;
import android.view.Window;

import com.ricelake.walker.R;
import com.ricelake.walker.module.login.LoginController;
import com.ricelake.walker.mvc.AbstractController;
import com.ricelake.walker.mvc.DataForm;


public class SplashController extends AbstractController implements Runnable
{

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        requestWindowFeature(Window.FEATURE_NO_TITLE);
        
        super.onCreate(savedInstanceState);
    }
    
    @Override
    protected void setup(DataForm<String, Object> dataForm)
    {
    	this.view = new SplashView();
        this.model = new SplashModel();
        
        
        Thread t = new Thread(this);
        t.start();
    }
    
    @Override
    protected boolean doControl(String action)
    {
        if (action.equals(ACTION_PREFIX_CONTROLLER + R.MvcConstants.CONTROLLER_MAIN))
        {
            Intent i = new Intent();
            i.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            i.setClass(this, LoginController.class);
            this.startActivity(i);
            this.finish();
            return true;
        }

        return false;
    }
    
    @Override
    public void run()
    {
        synchronized (this)
        {
            try
            {
                this.wait(2500);
                
                this.postControllerEvent(R.MvcConstants.CONTROLLER_MAIN);
            }
            catch (InterruptedException e)
            {
                e.printStackTrace();
            }
        }
    }
}