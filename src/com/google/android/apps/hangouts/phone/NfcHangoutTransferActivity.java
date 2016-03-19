package com.google.android.apps.hangouts.phone;

import aal;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import cgs;
import ewz;
import hpv;
import hpw;
import hqb;
import hzy;
import iaj;
import iap;
import imi;

public class NfcHangoutTransferActivity
  extends imi
  implements hpw
{
  private cgs j;
  private hzy k = new hzy(this, m).a("active-hangouts-account").a(l).b(this);
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      j = j.c(k.c().b("account_name"));
      startActivity(aal.a(j, null, false, 51, SystemClock.elapsedRealtime()));
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (ewz.d())
    {
      paramBundle = getIntent();
      if (("android.nfc.action.NDEF_DISCOVERED".equals(paramBundle.getAction())) && (paramBundle.getData() != null) && (paramBundle.getData().toString().startsWith("vnd.android.nfc://ext/com.google.android.apps.hangouts:hangoutrequest"))) {}
      for (int i = 1; i != 0; i = 0)
      {
        j = aal.e(getIntent());
        paramBundle = new iaj().b().a(j.a()).a(iap.class);
        k.a(paramBundle);
        return;
      }
    }
    finish();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.NfcHangoutTransferActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */