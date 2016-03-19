package com.google.android.apps.hangouts.telephony.ui;

import android.content.Intent;
import android.os.Bundle;
import ewg;
import ewh;
import eym;
import ezi;
import hzy;
import imi;

public class TeleSetupActivity
  extends imi
  implements ewh
{
  private final hzy j = new hzy(this, m).a(l);
  
  private ewg h()
  {
    return (ewg)((eym)getIntent().getParcelableExtra("controller")).a();
  }
  
  public Object g()
  {
    return h();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    ezi.c("Babel_telephony", "TeleSetupActivity.onCreate", new Object[0]);
    super.onCreate(paramBundle);
    h().a(this, j);
  }
  
  public void onDestroy()
  {
    boolean bool = isFinishing();
    ezi.c("Babel_telephony", 45 + "TeleSetupActivity.onDestroy, finishing: " + bool, new Object[0]);
    super.onDestroy();
    if (isFinishing()) {
      h().e();
    }
  }
  
  public void onPause()
  {
    boolean bool = isFinishing();
    ezi.c("Babel_telephony", 43 + "TeleSetupActivity.onPause, finishing: " + bool, new Object[0]);
    super.onPause();
  }
  
  public void onResume()
  {
    ezi.c("Babel_telephony", "TeleSetupActivity.onResume", new Object[0]);
    super.onResume();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    boolean bool = isFinishing();
    ezi.c("Babel_telephony", 55 + "TeleSetupActivity.onSaveInstanceState, finishing: " + bool, new Object[0]);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onStop()
  {
    boolean bool = isFinishing();
    ezi.c("Babel_telephony", 42 + "TeleSetupActivity.onStop, finishing: " + bool, new Object[0]);
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.ui.TeleSetupActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */