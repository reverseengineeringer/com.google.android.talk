package com.google.android.apps.hangouts.phone;

import aal;
import aen;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import cbr;
import cfc;
import cgw;
import com.google.android.apps.hangouts.hangout.StressMode;
import dia;
import dit;
import dvp;
import fak;
import gxk;
import gxl;
import gxp;
import gyq;
import gyr;
import gys;
import gyt;
import gyu;
import hpu;
import ilh;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
import qe;

public class HelpAndFeedbackActivity
  extends cbr
{
  public static final Set<String> n;
  private WebView o;
  
  static
  {
    HashSet localHashSet = new HashSet();
    n = localHashSet;
    localHashSet.add("support.google.com");
    n.add("www.google.co.kr");
    n.add("www.google.com");
  }
  
  protected boolean a(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      onBackPressed();
      return true;
    }
    Object localObject1;
    if (paramMenuItem.getItemId() == aen.ce)
    {
      aal.a(null, 1608);
      paramMenuItem = getApplicationContext();
      localObject1 = ((gxl)ilh.a(paramMenuItem, gxl.class)).a(((gys)ilh.a(paramMenuItem, gys.class)).a()).a();
      ((gxk)localObject1).a();
      if (aal.oI == null) {
        aal.oI = (gyu)ilh.a(paramMenuItem, gyu.class);
      }
      Object localObject2 = cfc.a().r();
      if (localObject2 != null) {
        aal.oI.a("session_id", ((cgw)localObject2).m());
      }
      localObject2 = dvp.b(((hpu)ilh.a(paramMenuItem, hpu.class)).a());
      if (!TextUtils.isEmpty((CharSequence)localObject2)) {
        aal.oI.a("exp", (String)localObject2);
      }
      localObject2 = aal.oI.b().a();
      if ((localObject2 != null) && (((Bitmap)localObject2).isRecycled())) {
        aal.oI.a(null);
      }
      ((gyr)ilh.a(paramMenuItem, gyr.class)).a((gxk)localObject1).b(aal.oI.b()).a(new dia((gxk)localObject1));
      return true;
    }
    if (paramMenuItem.getItemId() == aen.hh)
    {
      aal.b(this, aal.oJ.getPackageName());
      aal.a(null, 1609);
      return true;
    }
    if (paramMenuItem.getItemId() == aen.ec)
    {
      startActivity(aal.o(aal.a(this, "babel_privacy_policy_url", "https://www.google.com/policies/privacy/")));
      aal.a(null, 1610);
      return true;
    }
    if (paramMenuItem.getItemId() == aen.eb)
    {
      showDialog(1);
      aal.a(null, 1611);
      return true;
    }
    if (paramMenuItem.getItemId() == aen.ef)
    {
      startActivity(aal.o(aal.a(this, "babel_tos_url", "https://www.google.com/accounts/tos")));
      aal.a(null, 1612);
      return true;
    }
    if (paramMenuItem.getItemId() == aen.dZ)
    {
      localObject1 = aal.a(this, "babel_maps_tos_url", "https://www.google.com/intl/en/help/terms_maps.html");
      paramMenuItem = (MenuItem)localObject1;
      if (!TextUtils.isEmpty(Locale.getDefault().getLanguage()))
      {
        paramMenuItem = String.valueOf(Locale.getDefault().getLanguage());
        paramMenuItem = ((String)localObject1).replace("/en/", String.valueOf(paramMenuItem).length() + 2 + "/" + paramMenuItem + "/");
      }
      startActivity(aal.o(paramMenuItem));
      aal.a(null, 1669);
      return true;
    }
    if (paramMenuItem.getItemId() == aen.dW)
    {
      startActivity(aal.o(aal.a(this, "babel_location_tos_url", "https://www.google.co.kr/intl/ko/policies/terms/location/")));
      aal.a(null, 1613);
      return true;
    }
    return super.a(paramMenuItem);
  }
  
  protected String j()
  {
    return aal.e("https://www.google.com/support/hangouts/?hl=%locale%", "androidhelp").toString();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.fY);
    View localView = findViewById(aen.dP);
    o = ((WebView)findViewById(aen.dk));
    o.getSettings().setJavaScriptEnabled(true);
    if (paramBundle == null)
    {
      o.setWebViewClient(new dit(this, localView));
      o.loadUrl(j());
    }
    paramBundle = g();
    paramBundle.b(getResources().getString(StressMode.eI, new Object[] { ((fak)A.a(fak.class)).c() }));
    paramBundle.a(true);
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    }
    Dialog localDialog = new Dialog(this);
    localDialog.setContentView(aal.gv);
    localDialog.setTitle(StressMode.fu);
    ((WebView)localDialog.findViewById(aen.eH)).loadUrl("file:///android_asset/licenses.html");
    return localDialog;
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getMenuInflater().inflate(aal.hb, paramMenu);
    boolean bool = super.onCreateOptionsMenu(paramMenu);
    if ("KR".equals(aal.w(getApplicationContext()))) {
      paramMenu.findItem(aen.dW).setVisible(true);
    }
    return bool;
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    aal.oI = null;
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    aal.oI = null;
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    o.restoreState(paramBundle);
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    o.saveState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.HelpAndFeedbackActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */