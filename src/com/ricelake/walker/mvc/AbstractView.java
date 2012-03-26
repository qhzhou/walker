package com.ricelake.walker.mvc;

import android.app.Activity;
import android.view.View;

public abstract class AbstractView extends AbstractMvcDispatcher
{
    protected Activity activity;
    protected DataForm<String, ?> dataForm;

    public abstract boolean handleUiEvent(String action, View view);
    
    protected void postViewEvent(int viewEvent)
    {
        this.dispatchEvent(ACTION_PREFIX_VIEW + viewEvent);
    }
}
