package com.google.android.apps.hangouts.telephony.ui;

import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.preference.PreferenceActivity;
import android.view.MenuItem;
import ewb;

public class TeleSettingsActivity
  extends PreferenceActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getFragmentManager().beginTransaction().setTransition(0).replace(16908290, new ewb()).commit();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      onBackPressed();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.telephony.ui.TeleSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */