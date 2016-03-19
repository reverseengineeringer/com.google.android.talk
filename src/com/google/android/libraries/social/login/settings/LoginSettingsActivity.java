package com.google.android.libraries.social.login.settings;

import aen;
import android.os.Bundle;
import ich;
import icn;
import ild;
import ilh;
import ilv;

public final class LoginSettingsActivity
  extends ilv
  implements icn
{
  public LoginSettingsActivity()
  {
    new ild(this, B);
    new ich(this, this, B);
  }
  
  protected void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    A.a(icn.class, this);
  }
  
  public void j()
  {
    finish();
  }
  
  public void k()
  {
    finish();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aen.kr);
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.login.settings.LoginSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */