package com.google.android.apps.hangouts.help.impl;

import aal;
import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class OpenSourceLicensesActivity
  extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(aal.ml);
    paramBundle = (WebView)findViewById(aal.mk);
    paramBundle.loadUrl("file:///android_asset/licenses.html");
    paramBundle.getSettings().setJavaScriptEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.help.impl.OpenSourceLicensesActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */