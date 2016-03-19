package com.google.android.libraries.social.silentfeedback.impl;

import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.IBinder;
import gxk;
import gxl;
import gyr;
import gys;
import iko;
import ikq;
import ilh;

public final class SilentFeedbackService
  extends Service
{
  private final Object a = new Object();
  private int b = 0;
  private int c = 0;
  
  private final boolean b()
  {
    boolean bool = false;
    try
    {
      i = getPackageManagergetPackageInfo"com.google.android.gms"0versionCode;
      if (i >= 6577000) {
        bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      for (;;)
      {
        int i = 0;
      }
    }
  }
  
  public void a()
  {
    Integer localInteger = null;
    synchronized (a)
    {
      int i = b - 1;
      b = i;
      if (i == 0) {
        localInteger = Integer.valueOf(c);
      }
      if (localInteger != null) {
        stopSelf(localInteger.intValue());
      }
      return;
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    synchronized (a)
    {
      b += 1;
      c = paramInt2;
      if (!b())
      {
        a();
        return 2;
      }
    }
    ??? = ((gxl)ilh.a(getApplication(), gxl.class)).a(((gys)ilh.a(getApplication(), gys.class)).a()).a();
    ((gxk)???).a(new iko(this, ((gyr)ilh.a(getApplication(), gyr.class)).a((gxk)???), paramIntent, (gxk)???));
    ((gxk)???).a(new ikq(this));
    ((gxk)???).a();
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.silentfeedback.impl.SilentFeedbackService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */