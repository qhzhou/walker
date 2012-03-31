package com.ricelake.walker.module.login;

import android.app.ProgressDialog;
import android.view.View;
import android.widget.Toast;

import com.ricelake.walker.R;
import com.ricelake.walker.mvc.AbstractView;

public class LoginView extends AbstractView {
	private ProgressDialog pd;

	@Override
	public boolean handleUiEvent(String action, View view) {
		if (isViewAction(action)) {
			switch (view.getId()) {
			case R.id.login_login: {
				pd = new ProgressDialog(this.activity);
				pd.setMessage("µÇÂ¼ÖÐ...");
				pd.show();
				break;
			}
			case R.id.login_register: {
				Toast.makeText(activity, "×¢²á", 0).show();
				break;
			}
			}
		} else if (isModelAction(action)) {
			if (action.equalsIgnoreCase(ACTION_PREFIX_MODEL+ILoginConstants.MODEL_EVENT_LOGIN_SUCCESSFUL)) {
				if (pd != null) {
					pd.dismiss();
				}
			}
			
		}
		return false;
	}

}
