package com.google.android.apps.hangouts.phone;

import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import djk;
import dvd;
import hpv;
import hpw;
import hzy;
import iaj;
import iap;
import iaq;
import imi;

public class SmsAccountPickerActivity
  extends imi
  implements hpw
{
  private hzy j = new hzy(this, m).a(l).b(this);
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c) {
      dvd.b(dvd.e(paramInt2));
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new iaj().d().a(iap.class, new iaq().a(new djk()).a(getString(StressMode.jp)).c());
    j.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.SmsAccountPickerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */