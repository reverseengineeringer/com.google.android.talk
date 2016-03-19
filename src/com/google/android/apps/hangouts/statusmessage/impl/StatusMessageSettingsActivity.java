package com.google.android.apps.hangouts.statusmessage.impl;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.view.Menu;
import android.view.View;
import ept;
import ipf;
import jry;
import jrz;
import jsb;
import jsc;
import jse;
import jsl;
import jsr;
import jtg;
import jud;

public final class StatusMessageSettingsActivity
  extends ipf
  implements jry<Object>, jrz<StatusMessageSettingsActivityPeer>
{
  private StatusMessageSettingsActivityPeer j;
  private volatile ept k;
  private volatile Object l;
  private final Object n = new Object();
  private final jtg o = new jtg(this);
  private boolean p;
  
  private void h()
  {
    if (l == null) {
      synchronized (n)
      {
        if (l == null)
        {
          ept localept = k;
          if (localept != null) {}
        }
        try
        {
          k = ((ept)((jsc)((jry)getApplication()).a()).b(new jse(this)));
          l = ((jsb)k).d();
          return;
        }
        catch (ClassCastException localClassCastException)
        {
          throw new IllegalStateException("Missing entry point. If you're in a test with explicit entry points specified in your @TestRoot, check that you're not missing the one for this class.", localClassCastException);
        }
      }
    }
  }
  
  public Object a()
  {
    h();
    return l;
  }
  
  protected boolean a(View paramView, Menu paramMenu)
  {
    return super.a(paramView, paramMenu);
  }
  
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
  }
  
  public Class<StatusMessageSettingsActivityPeer> g()
  {
    return StatusMessageSettingsActivityPeer.class;
  }
  
  protected void g_()
  {
    super.g_();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onApplyThemeResource(Resources.Theme paramTheme, int paramInt, boolean paramBoolean)
  {
    super.onApplyThemeResource(paramTheme, paramInt, paramBoolean);
  }
  
  public void onBackPressed()
  {
    o.o();
    try
    {
      super.onBackPressed();
      return;
    }
    finally
    {
      jud.b("Back pressed");
    }
  }
  
  protected void onChildTitleChanged(Activity paramActivity, CharSequence paramCharSequence)
  {
    super.onChildTitleChanged(paramActivity, paramCharSequence);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    p = true;
    o.a();
    try
    {
      h();
      if (j != null) {
        break label65;
      }
      if (!p) {
        throw new IllegalStateException("createPeer() called outside of onCreate");
      }
    }
    finally
    {
      o.b();
    }
    h();
    j = k.a();
    label65:
    ((jsl)k).b().a();
    super.onCreate(paramBundle);
    j.a();
    o.b();
    p = false;
  }
  
  @Deprecated
  protected Dialog onCreateDialog(int paramInt)
  {
    return super.onCreateDialog(paramInt);
  }
  
  @Deprecated
  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    return super.onCreateDialog(paramInt, paramBundle);
  }
  
  protected void onDestroy()
  {
    o.m();
    try
    {
      super.onDestroy();
      return;
    }
    finally
    {
      o.n();
    }
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
  }
  
  protected void onPause()
  {
    o.i();
    try
    {
      super.onPause();
      return;
    }
    finally
    {
      o.j();
    }
  }
  
  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
  }
  
  protected void onPostResume()
  {
    o.g();
    try
    {
      super.onPostResume();
      return;
    }
    finally
    {
      o.h();
    }
  }
  
  @Deprecated
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    super.onPrepareDialog(paramInt, paramDialog);
  }
  
  @Deprecated
  protected void onPrepareDialog(int paramInt, Dialog paramDialog, Bundle paramBundle)
  {
    super.onPrepareDialog(paramInt, paramDialog, paramBundle);
  }
  
  protected void onRestart()
  {
    super.onRestart();
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
  }
  
  protected void onResume()
  {
    o.e();
    try
    {
      super.onResume();
      return;
    }
    finally
    {
      o.f();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
  }
  
  protected void onStart()
  {
    o.c();
    try
    {
      super.onStart();
      return;
    }
    finally
    {
      o.d();
    }
  }
  
  protected void onStop()
  {
    o.k();
    try
    {
      super.onStop();
      return;
    }
    finally
    {
      o.l();
    }
  }
  
  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
  }
  
  protected void onUserLeaveHint()
  {
    super.onUserLeaveHint();
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.statusmessage.impl.StatusMessageSettingsActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */