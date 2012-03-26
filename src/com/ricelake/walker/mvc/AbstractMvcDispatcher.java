package com.ricelake.walker.mvc;

abstract class AbstractMvcDispatcher implements IMvcConstants
{
    IMvcDispatcherListener dispatcherListener;
    
    public static boolean isModelAction(String action)
    {
        if(action.startsWith(ACTION_PREFIX_MODEL))
            return true;
        
        return false;
    }
    
    public static boolean isViewAction(String action)
    {
        if(action.startsWith(ACTION_PREFIX_VIEW))
            return true;
        
        return false;
    }
    
    public static boolean isControllerAction(String action)
    {
        if(action.startsWith(ACTION_PREFIX_CONTROLLER))
            return true;
        
        return false;
    }
    
    public static boolean isViewEventClickAction(String action)
    {
        if(action.startsWith(ACTION_PREFIX_VIEW_EVENT_CLICK))
            return true;
        
        return false;
    }
    
    protected final void dispatchEvent(String event)
    {
        dispatcherListener.dispatchMvcEvent(event);
    }
}
