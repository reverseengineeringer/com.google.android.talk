package com.google.android.apps.hangouts.phone;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.apps.hangouts.hangout.StressMode;
import ddb;
import hpv;
import hpw;
import hzs;
import hzy;
import iaj;
import iap;
import iaq;
import ilv;

public class AccountSelectionActivity
  extends ilv
  implements hpw
{
  private hzy j = new hzy(this, B).a(A).b(this);
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      paramhpv1 = (Intent)getIntent().getParcelableExtra("intent");
      paramhpv1.putExtra("account_id", paramInt2);
      startActivity(paramhpv1);
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    boolean bool = getIntent().getBooleanExtra("sms_accts_only", false);
    paramBundle = new iaj();
    if (bool) {
      paramBundle.a(iap.class, new iaq().a(getString(StressMode.cf)).a().a(new ddb()).c());
    }
    for (;;)
    {
      j.a(paramBundle);
      return;
      paramBundle.a(iap.class, new iaq().a(getString(StressMode.cf)).a().a(new hzs().b("sms_only")).c());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.AccountSelectionActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */