package com.google.android.apps.hangouts.phone;

import aal;
import android.content.Intent;
import android.os.Bundle;
import au;
import ba;
import bg;
import dhz;

public final class GmsInstallActivity
  extends ba
{
  private void g()
  {
    cbr.k = false;
    boolean bool = getIntent().getExtras().getBoolean("from_main_launcher");
    Intent localIntent = aal.d(null);
    if (bool) {
      localIntent.setAction("android.intent.action.MAIN");
    }
    localIntent.addFlags(32768);
    startActivity(localIntent);
    finish();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
      return;
    }
    g();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    int i = aal.a(false, false, false);
    if (i == 0)
    {
      g();
      return;
    }
    paramBundle = C_().a();
    dhz.a(i, 1001).a(paramBundle, "gmscore dialog");
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.GmsInstallActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */