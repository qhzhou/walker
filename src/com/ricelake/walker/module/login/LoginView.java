package com.ricelake.walker.module.login;

import java.io.File;

import android.app.ProgressDialog;
import android.view.View;
import android.widget.Toast;

import com.ricelake.walker.R;
import com.ricelake.walker.mvc.AbstractView;


public class LoginView extends AbstractView
{
    @Override
    public boolean handleUiEvent(String action, View view)
    {
        
        switch(view.getId())
        {
            case R.id.login:
            {
//                TextView tv = (TextView)activity.findViewById(R.id.textView1);
//                tv.setEnabled(false);
//                
//                Button b = (Button)view;
//                b.setTextColor(0xffFF00FF);
//                
//                ProgressDialog pd = new ProgressDialog(this.activity);
//                pd.setTitle(this.dataForm.getString(R.id.username + "") + ", " + this.dataForm.getString(R.id.password + ""));
//                pd.show();
            	File file = new File("/data/data/com.telenav.app.android.cingular_tablet/cache");
            	
            	Toast.makeText(activity,  file.exists() + " " + file.isDirectory(), 0).show();
                break;
            }
            case R.id.register:
            {
                ProgressDialog pd = new ProgressDialog(this.activity);
                pd.show();
                break;
            }
        }
        return false;
    }

}
