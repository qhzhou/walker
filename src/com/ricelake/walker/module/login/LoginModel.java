package com.ricelake.walker.module.login;

import com.ricelake.walker.R;
import com.ricelake.walker.mvc.AbstractModel;

public class LoginModel extends AbstractModel
{
    @Override
    public boolean doAction(String action)
    {
        if (action.equals(ACTION_PREFIX_VIEW_EVENT_CLICK + R.id.login))
        {
            //start network request...
        }
        return false;
    }

}
