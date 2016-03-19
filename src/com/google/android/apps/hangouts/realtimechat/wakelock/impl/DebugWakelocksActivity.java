package com.google.android.apps.hangouts.realtimechat.wakelock.impl;

import aal;
import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.widget.LinearLayout;
import android.widget.ListView;
import eec;
import eed;
import eee;
import eef;
import eel;
import ilh;

public class DebugWakelocksActivity
  extends Activity
{
  public eel a;
  public ListView b;
  public final Runnable c = new eed(this);
  private LinearLayout d;
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((eel)ilh.a(this, eec.class));
    b = new eee(this, this);
    d = new eef(this, this);
    setContentView(d);
  }
  
  public void onPause()
  {
    super.onPause();
    Runnable localRunnable = c;
    aal.y().removeCallbacks(localRunnable);
  }
  
  public void onResume()
  {
    super.onResume();
    c.run();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.realtimechat.wakelock.impl.DebugWakelocksActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */