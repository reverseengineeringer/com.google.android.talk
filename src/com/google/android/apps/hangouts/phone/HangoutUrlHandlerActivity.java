package com.google.android.apps.hangouts.phone;

import aal;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import cgs;
import com.google.android.apps.hangouts.hangout.StressMode;
import dif;
import dig;
import hpv;
import hpw;
import hqb;
import hzs;
import hzy;
import iaj;
import iap;
import iaq;
import imi;

public class HangoutUrlHandlerActivity
  extends imi
  implements hpw
{
  private hzy j = new hzy(this, m).a("active-hangouts-account").a(l).b(this);
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      paramhpv1 = cgs.a(getIntent().getData(), j.c().b("account_name"), null);
      if (paramhpv1 == null)
      {
        paramhpv1 = new AlertDialog.Builder(this);
        paramhpv1.setMessage(StressMode.dF);
        paramhpv1.setPositiveButton(StressMode.gZ, new dif(this));
        paramhpv1.setOnCancelListener(new dig(this));
        paramhpv1.show();
        return;
      }
      startActivity(aal.a(paramhpv1, null, false, 51, SystemClock.elapsedRealtime()));
      finish();
      return;
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = new iaj().b().a(iap.class, new iaq().a().a(new hzs().a("logged_in").b("sms_only")).c());
    j.a(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.HangoutUrlHandlerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */