package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.app.Activity;
import android.os.Bundle;
import android.widget.ExpandableListView;
import dfo;

public class DebugBitmapsActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.ft);
    ((ExpandableListView)findViewById(aen.aM)).setAdapter(new dfo(this));
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.DebugBitmapsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */