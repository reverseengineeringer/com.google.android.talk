package com.google.android.apps.hangouts.phone;

import aal;
import android.app.ActionBar;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.preference.EditTextPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import bei;
import com.google.android.apps.hangouts.R.drawable;
import com.google.android.apps.hangouts.hangout.StressMode;
import ddd;
import dde;
import ddf;
import ezm;

public class ApnEditorActivity
  extends PreferenceActivity
  implements SharedPreferences.OnSharedPreferenceChangeListener, Preference.OnPreferenceChangeListener
{
  public static final String[] i = { "_id", "name", "mmsc", "mcc", "mnc", "numeric", "mmsproxy", "mmsport", "type" };
  private static String k;
  public EditTextPreference a;
  public EditTextPreference b;
  public EditTextPreference c;
  public String d;
  public String e;
  public Cursor f;
  public boolean g;
  public String h;
  public SQLiteDatabase j;
  private EditTextPreference l;
  private EditTextPreference m;
  private EditTextPreference n;
  private boolean o;
  private Resources p;
  
  public static String a(String paramString)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (!paramString.equals(k)) {}
    }
    else
    {
      str = "";
    }
    return str;
  }
  
  private boolean a(boolean paramBoolean)
  {
    String str1 = a(l.getText());
    String str2 = a(m.getText());
    String str3 = a(n.getText());
    if ((b() != null) && (!paramBoolean))
    {
      showDialog(0);
      return false;
    }
    new dde(this, str1, str2, str3).execute(new Void[] { null });
    return true;
  }
  
  private String b()
  {
    String str1 = null;
    String str3 = a(l.getText());
    String str4 = a(m.getText());
    String str2 = a(n.getText());
    if (str3.length() <= 0) {
      str1 = p.getString(StressMode.bY);
    }
    do
    {
      return str1;
      if (str4.length() != 3) {
        return p.getString(StressMode.ca);
      }
    } while ((str2.length() & 0xFFFE) == 2);
    return p.getString(StressMode.cb);
  }
  
  private static String b(String paramString)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (paramString.length() != 0) {}
    }
    else
    {
      str = k;
    }
    return str;
  }
  
  public void a()
  {
    if (g)
    {
      m.setText(null);
      n.setText(null);
      String str2 = ezm.k().getSimOperator();
      if ((str2 != null) && (str2.length() > 4))
      {
        String str1 = str2.substring(0, 3);
        str2 = str2.substring(3);
        m.setText(str1);
        n.setText(str2);
        d = str2;
        e = str1;
      }
      l.setText(null);
      b.setText(null);
      c.setText(null);
      a.setText(null);
    }
    for (;;)
    {
      l.setSummary(b(l.getText()));
      b.setSummary(b(b.getText()));
      c.setSummary(b(c.getText()));
      a.setSummary(b(a.getText()));
      m.setSummary(b(m.getText()));
      n.setSummary(b(n.getText()));
      return;
      if (o)
      {
        o = false;
        l.setText(f.getString(1));
        b.setText(f.getString(6));
        c.setText(f.getString(7));
        a.setText(f.getString(2));
        m.setText(f.getString(3));
        n.setText(f.getString(4));
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    addPreferencesFromResource(aal.hU);
    k = getResources().getString(StressMode.p);
    l = ((EditTextPreference)findPreference("apn_name"));
    b = ((EditTextPreference)findPreference("apn_mms_proxy"));
    c = ((EditTextPreference)findPreference("apn_mms_port"));
    a = ((EditTextPreference)findPreference("apn_mmsc"));
    m = ((EditTextPreference)findPreference("apn_mcc"));
    n = ((EditTextPreference)findPreference("apn_mnc"));
    p = getResources();
    Intent localIntent = getIntent();
    boolean bool;
    if (paramBundle == null)
    {
      bool = true;
      o = bool;
      h = localIntent.getStringExtra("apn_row_id");
      if (h != null) {
        break label193;
      }
      bool = true;
      label146:
      g = bool;
      j = bei.a(getApplicationContext());
      if (!g) {
        break label198;
      }
      a();
    }
    for (;;)
    {
      paramBundle = getActionBar();
      if (paramBundle != null) {
        paramBundle.setDisplayHomeAsUpEnabled(true);
      }
      return;
      bool = false;
      break;
      label193:
      bool = false;
      break label146;
      label198:
      new ddd(this).execute(new Void[] { null });
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 0)
    {
      String str = b();
      return new AlertDialog.Builder(this).setPositiveButton(17039370, null).setMessage(str).create();
    }
    return super.onCreateDialog(paramInt);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    if (!g) {
      paramMenu.add(0, 1, 0, StressMode.fk).setIcon(R.drawable.bl);
    }
    paramMenu.add(0, 2, 0, StressMode.fy).setIcon(17301582);
    paramMenu.add(0, 3, 0, StressMode.fm).setIcon(17301560);
    return true;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (f != null)
    {
      f.close();
      f = null;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    switch (paramInt)
    {
    default: 
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    if (a(false)) {
      finish();
    }
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    boolean bool = true;
    switch (paramMenuItem.getItemId())
    {
    default: 
      bool = super.onOptionsItemSelected(paramMenuItem);
    case 1: 
    case 2: 
      do
      {
        return bool;
        new ddf(this).execute(new Void[] { null });
        finish();
        return true;
      } while (!a(false));
      finish();
      return true;
    case 3: 
      finish();
      return true;
    }
    onBackPressed();
    return true;
  }
  
  public void onPause()
  {
    getPreferenceScreen().getSharedPreferences().unregisterOnSharedPreferenceChangeListener(this);
    super.onPause();
  }
  
  public boolean onPreferenceChange(Preference paramPreference, Object paramObject)
  {
    paramPreference.getKey();
    return true;
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    super.onPrepareDialog(paramInt, paramDialog);
    if (paramInt == 0)
    {
      String str = b();
      if (str != null) {
        ((AlertDialog)paramDialog).setMessage(str);
      }
    }
  }
  
  public void onResume()
  {
    super.onResume();
    getPreferenceScreen().getSharedPreferences().registerOnSharedPreferenceChangeListener(this);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if ((a(true)) && (f != null)) {
      paramBundle.putInt("pos", f.getInt(0));
    }
  }
  
  public void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    Preference localPreference = findPreference(paramString);
    if (localPreference != null) {
      localPreference.setSummary(b(paramSharedPreferences.getString(paramString, "")));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.ApnEditorActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */