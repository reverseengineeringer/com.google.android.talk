package com.google.android.apps.hangouts.callerid.impl;

import aal;
import aen;
import android.content.Intent;
import android.os.Bundle;
import bap;
import bg;
import bz;
import dly;

public class CallerIdPromoActivity
  extends dly
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.im);
    paramBundle = C_().a();
    paramBundle.a(aen.hw, bap.a(getIntent().getBooleanExtra("callerid_from_promo_flow", false), getIntent().getStringExtra("callerid_current_sim_number")));
    paramBundle.b();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.callerid.impl.CallerIdPromoActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */