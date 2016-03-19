package com.google.android.libraries.social.login;

import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import hpv;
import hpw;
import hzy;
import iae;
import iaj;
import ilh;
import imi;

public final class LoginActivity
  extends imi
  implements hpw
{
  final hzy j = new hzy(this, m).b(this);
  private iae k;
  private boolean n;
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    k = ((iae)l.b(iae.class));
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    if (paramInt2 != -1)
    {
      paramhpv1 = (Intent)getIntent().getParcelableExtra("redirect_intent");
      paramhpv2 = (Bundle)getIntent().getParcelableExtra("redirect_intent_options");
      if (paramhpv1 != null)
      {
        paramhpv1.putExtra("account_id", j.a());
        paramhpv1.addFlags(41943040);
        if (Build.VERSION.SDK_INT >= 16) {
          startActivity(paramhpv1, paramhpv2);
        }
      }
    }
    for (;;)
    {
      finish();
      return;
      startActivity(paramhpv1);
      continue;
      paramhpv1 = new Intent();
      paramhpv1.putExtra("account_id", j.a());
      setResult(-1, paramhpv1);
      continue;
      setResult(0);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle == null)
    {
      paramBundle = (iaj)getIntent().getParcelableExtra("login_request");
      j.a(paramBundle);
      return;
    }
    n = paramBundle.getBoolean("impression_logged", false);
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((!n) && (k != null)) {
      n = true;
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("impression_logged", n);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.login.LoginActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */