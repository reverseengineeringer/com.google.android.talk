package com.google.android.apps.hangouts.hangout;

import aal;
import android.os.Bundle;
import ba;
import cfc;
import chh;

public final class InCallDialpadActivity
  extends ba
{
  private final cfc j = cfc.a();
  private chh k;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.gc);
  }
  
  protected void onStart()
  {
    super.onStart();
    k = new chh(this);
    j.a(k);
  }
  
  protected void onStop()
  {
    super.onStop();
    j.b(k);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.hangout.InCallDialpadActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */