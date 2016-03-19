package com.google.android.apps.hangouts.phoneverification.impl;

import aal;
import android.content.Intent;
import android.os.Bundle;
import bg;
import bz;
import dkf;
import gbi;
import hqo;
import imi;

public class PhoneVerificationActivity
  extends imi
{
  public PhoneVerificationActivity()
  {
    new hqo(this, m).a(l);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.oO);
    if (paramBundle != null) {
      return;
    }
    paramBundle = new dkf(getIntent().getBooleanExtra("from_settings", false));
    bz localbz = C_().a();
    localbz.a(gbi.i, paramBundle.a());
    localbz.b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phoneverification.impl.PhoneVerificationActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */