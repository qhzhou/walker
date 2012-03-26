package com.ricelake.walker.mvc;

import java.lang.reflect.Field;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.ricelake.walker.R;
import com.ricelake.walker.log.Logger;


public abstract class AbstractController extends Activity implements IMvcConstants, IMvcDispatcherListener
{
    protected AbstractModel model;

    protected AbstractView view;

    protected DataForm<String, Object> dataForm;

    public AbstractController()
    {
        dataForm = new DataForm<String, Object>();

        setup(dataForm);

        if (view == null && model == null)
        {
            throw new IllegalStateException("setup failed... view and model are both empty...");
        }

        if(view != null)
        {
            view.dataForm = dataForm;
            view.activity = this;
            view.dispatcherListener = this;
        }
        
        if(model != null)
        {
            model.dataForm = dataForm;
            model.dispatcherListener = this;
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        Logger.log(Logger.INFO, this.getClass(), "---onCreate---");
        
        super.onCreate(savedInstanceState);

        try
        {
            String className = this.getClass().getName();
            String layoutName = className.substring(className.lastIndexOf(".") + 1, className.indexOf("Controller")).toLowerCase();

            Logger.log(Logger.INFO, this.getClass(), "layout name: " + layoutName);

            Field f = R.layout.class.getDeclaredField(layoutName);
            int value = f.getInt(null);

            this.setContentView(value);
        }
        catch (Exception e)
        {
            Logger.log(Logger.ERROR, this.getClass(), "init controller failed...", e);
        }
    }
    
    @Override
    protected void onStart()
    {
        Logger.log(Logger.INFO, this.getClass(), "---onStart---");
        
        super.onStart();
    }
    
    @Override
    protected void onResume()
    {
        Logger.log(Logger.INFO, this.getClass(), "---onResume---");
        
        super.onResume();
    }
    
    @Override
    protected void onPause()
    {
        Logger.log(Logger.INFO, this.getClass(), "---onPause---");
        
        super.onPause();
    }

    @Override
    protected void onStop()
    {
        Logger.log(Logger.INFO, this.getClass(), "---onStop---");
        
        super.onStop();
    }
    
    @Override
    protected void onDestroy()
    {
        Logger.log(Logger.INFO, this.getClass(), "---onDestroy---");
        
        super.onDestroy();
    }

    @Override
    public void startActivityForResult(Intent intent, int requestCode)
    {
        boolean isFromDoControl = false;
        StackTraceElement[] elements = Thread.currentThread().getStackTrace();
        for(StackTraceElement element : elements)
        {
        	//if the code is obfuscated, then what?
            if ("doControl".equals(element.getMethodName()))
            {
                isFromDoControl = true;
                break;
            }
        }
        
        if(!isFromDoControl)
        {
            throw new IllegalStateException("startActivity() need be invoked from doControl() method.");
        }
        
        super.startActivityForResult(intent, requestCode);
    }
    
    protected abstract void setup(DataForm<String, Object> dataForm);

    public final void dispatchMvcEvent(View v)
    {
    	if (model.needPrefillDataForm()) {
    		prefillDataForm(v.getRootView());
    	}
        
        this.dispatchEvent(ACTION_PREFIX_VIEW_EVENT_CLICK + v.getId(), v);
    }
    
    public final void dispatchMvcEvent(String event)
    {
        dispatchEvent(event, null);
    }
    
    final void dispatchEvent(String event, View v)
    {
        boolean isHandled = view.handleUiEvent(event, v);

        if (!isHandled)
        {
            isHandled = model.doAction(event);
        }
        
        if (!isHandled)
        {
            isHandled = doControl(event);
        }
    }
    
    protected void postControllerEvent(int viewEvent)
    {
        this.dispatchMvcEvent(ACTION_PREFIX_CONTROLLER + viewEvent);
    }
    
    protected abstract boolean doControl(String action);
    
    protected void prefillDataForm(View v)
    {
        if(!(v instanceof ViewGroup))
        {
        	//if v is a TextView, this will skip the pre-filling 
            return;
        }
        
        ViewGroup vg = (ViewGroup)v;
        
        for (int i = vg.getChildCount() - 1; i >= 0; i--)
        {
            View child = vg.getChildAt(i);
            if (child instanceof TextView)
            {
                if (child.getTag() != null && "dataform".equals(child.getTag().toString().toLowerCase()))
                {
                    this.dataForm.put(child.getId() + "", ((TextView) child).getText());
                }
            }
            else
            {
                prefillDataForm(child);
            }
        }
    }
}
