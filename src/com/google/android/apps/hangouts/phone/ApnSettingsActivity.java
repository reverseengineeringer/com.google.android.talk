package com.google.android.apps.hangouts.phone;

import aal;
import android.app.ActionBar;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ContentValues;
import android.content.res.Resources;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.os.HandlerThread;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.telephony.TelephonyManager;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ListView;
import bei;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import ddh;
import ddi;
import ddj;
import ddk;
import eol;
import ezm;

public class ApnSettingsActivity
  extends PreferenceActivity
  implements Preference.OnPreferenceChangeListener
{
  public static final String[] a = { "_id", "name", "apn", "type" };
  public static boolean b;
  public static final ContentValues d;
  public static final ContentValues e;
  public static final String[] g = { "2" };
  public String c;
  public SQLiteDatabase f;
  private ddk h;
  private ddj i;
  private HandlerThread j;
  
  static
  {
    ContentValues localContentValues = new ContentValues(1);
    d = localContentValues;
    localContentValues.putNull("current");
    localContentValues = new ContentValues(1);
    e = localContentValues;
    localContentValues.put("current", "2");
  }
  
  public void a()
  {
    new ddh(this, eol.a(ezm.k().getSimOperator())).execute(new Void[] { null });
    ActionBar localActionBar = getActionBar();
    if (localActionBar != null) {
      localActionBar.setDisplayHomeAsUpEnabled(true);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = bei.a(getApplicationContext());
    addPreferencesFromResource(aal.hV);
    getListView().setItemsCanFocus(true);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 1001)
    {
      ProgressDialog localProgressDialog = new ProgressDialog(this);
      localProgressDialog.setMessage(getResources().getString(StressMode.iU));
      localProgressDialog.setCancelable(false);
      return localProgressDialog;
    }
    return null;
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    paramMenu.add(0, 1, 0, getResources().getString(StressMode.fv)).setIcon(R.drawable.bB).setShowAsAction(1);
    paramMenu.add(0, 2, 0, getResources().getString(StressMode.fx)).setIcon(17301589);
    return true;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (j != null) {
      j.quit();
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    case 1: 
      startActivity(aal.n(null));
      return true;
    case 2: 
      showDialog(1001);
      b = true;
      if (h == null) {
        h = new ddk(this);
      }
      if ((i == null) || (j == null))
      {
        j = new HandlerThread("Restore default APN Handler: Process Thread");
        j.start();
        i = new ddj(f, j.getLooper(), h);
      }
      i.sendEmptyMessage(1);
      return true;
    }
    onBackPressed();
    return true;
  }
  
  protected void onPause()
  {
    super.onPause();
  }
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    if ((paramObject instanceof String))
    {
      paramPreference = (String)paramObject;
      c = paramPreference;
      new ddi(this, paramPreference).execute(new Void[] { null });
    }
    return true;
  }
  
  public boolean onPreferenceTreeClick(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    startActivity(aal.n(paramPreference.getKey()));
    return true;
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    if (paramInt == 1001) {
      getPreferenceScreen().setEnabled(false);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (!b)
    {
      a();
      return;
    }
    showDialog(1001);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ApnSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */