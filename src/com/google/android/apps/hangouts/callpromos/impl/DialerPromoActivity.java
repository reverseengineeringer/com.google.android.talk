package com.google.android.apps.hangouts.callpromos.impl;

import aal;
import android.os.Bundle;
import bcc;
import bg;
import bz;
import com.google.android.apps.hangouts.hangout.StressMode;
import dly;

public class DialerPromoActivity
  extends dly
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.iS);
    paramBundle = new bcc();
    bz localbz = C_().a();
    localbz.a(StressMode.tn, paramBundle.a());
    localbz.b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.callpromos.impl.DialerPromoActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */