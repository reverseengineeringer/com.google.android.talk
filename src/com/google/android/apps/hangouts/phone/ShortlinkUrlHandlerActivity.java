package com.google.android.apps.hangouts.phone;

import aal;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import bfd;
import cgu;
import com.google.android.apps.hangouts.hangout.StressMode;
import djh;
import dji;
import dvd;
import hpv;
import hpw;
import hzy;
import iaj;
import iap;
import imi;
import java.util.List;

public class ShortlinkUrlHandlerActivity
  extends imi
  implements hpw
{
  private hzy j = new hzy(this, m).a("active-hangouts-account").a(l).b(this);
  
  private static bfd a(String paramString)
  {
    int[] arrayOfInt = dvd.d();
    int k = arrayOfInt.length;
    int i = 0;
    while (i < k)
    {
      bfd localbfd = dvd.e(arrayOfInt[i]);
      if ((localbfd.i() != null) && ((paramString == null) || (paramString.equals(localbfd.i())))) {
        return localbfd;
      }
      i += 1;
    }
    return null;
  }
  
  private void a(String paramString1, String paramString2, String paramString3)
  {
    startActivity(aal.a(new cgu(paramString1, 1).d(paramString2).e(paramString3).a(), null, false, 48, SystemClock.elapsedRealtime()));
    finish();
  }
  
  private void g()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setMessage(StressMode.dF);
    localBuilder.setPositiveButton(StressMode.gZ, new djh(this));
    localBuilder.setOnCancelListener(new dji(this));
    localBuilder.show();
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramhpv2 == hpv.c)
    {
      paramhpv1 = dvd.e(paramInt2);
      Object localObject = getIntent().getData().getPathSegments();
      if (((List)localObject).size() == 2)
      {
        paramhpv2 = (String)((List)localObject).get(1);
        a(paramhpv1.a(), paramhpv1.i(), paramhpv2);
      }
      while (((List)localObject).size() != 3) {
        return;
      }
      paramhpv2 = (String)((List)localObject).get(1);
      localObject = (String)((List)localObject).get(2);
      a(paramhpv1.a(), paramhpv2, (String)localObject);
      return;
    }
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if ((getIntent() == null) || (getIntent().getData() == null))
    {
      g();
      return;
    }
    paramBundle = getIntent().getData().getPathSegments();
    if (paramBundle.size() == 2)
    {
      paramBundle = a(null);
      if (paramBundle != null) {
        paramBundle = paramBundle.a();
      }
    }
    for (;;)
    {
      paramBundle = new iaj().b().a(paramBundle).a(iap.class);
      j.a(paramBundle);
      return;
      g();
      return;
      if (paramBundle.size() == 3)
      {
        paramBundle = a((String)paramBundle.get(1));
        if (paramBundle != null) {
          paramBundle = paramBundle.a();
        }
      }
      else
      {
        g();
        return;
      }
      paramBundle = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ShortlinkUrlHandlerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */