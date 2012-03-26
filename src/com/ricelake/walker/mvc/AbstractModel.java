package com.ricelake.walker.mvc;

public abstract class AbstractModel extends AbstractMvcDispatcher
{
    protected DataForm<String, ?> dataForm;

    protected boolean needPrefillDataForm()
    {
        return true;
    }
    
    protected abstract boolean doAction(String action);
    
    protected void postModelEvent(int modelEvent)
    {
        this.dispatchEvent(ACTION_PREFIX_MODEL + modelEvent);
    }
}
