package com.ricelake.walker.module.login;

import com.ricelake.walker.R;
import com.ricelake.walker.mvc.AbstractModel;

public class LoginModel extends AbstractModel
{
    @Override
    public boolean doAction(String action)
    {
        if (action.equals(ACTION_PREFIX_VIEW_EVENT_CLICK + R.id.login_login))
        {
        	new Thread(new Runnable() {
				
				@Override
				public void run() {
					try {
						Thread.sleep(200);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					postModelEvent(ILoginConstants.MODEL_EVENT_LOGIN_SUCCESSFUL);
					
				}
			}).start();
        }
        return false;
    }

}
