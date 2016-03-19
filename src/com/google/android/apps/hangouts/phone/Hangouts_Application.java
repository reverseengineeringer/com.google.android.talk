package com.google.android.apps.hangouts.phone;

import ae;
import af;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build.VERSION;
import android.util.Log;
import dem;
import djj;
import hxr;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import jrx;
import jry;
import jsg;

public final class Hangouts_Application
  extends Application
  implements jry<djj>
{
  private final Object a = new Object();
  private volatile djj b;
  
  private djj b()
  {
    c();
    return b;
  }
  
  private void c()
  {
    if (b == null) {
      synchronized (a)
      {
        if (b == null) {
          b = new dem().a(new jsg(this)).a();
        }
        return;
      }
    }
  }
  
  protected void attachBaseContext(Context arg1)
  {
    super.attachBaseContext(???);
    if (!ae.b) {
      if (Build.VERSION.SDK_INT < 4) {
        throw new RuntimeException("Multi dex installation failed. SDK " + Build.VERSION.SDK_INT + " is unsupported. Min SDK version is 4.");
      }
    }
    try
    {
      ??? = getPackageManager();
      Object localObject1 = getPackageName();
      if ((??? == null) || (localObject1 == null)) {}
      do
      {
        return;
        localObject1 = ???.getApplicationInfo((String)localObject1, 128);
      } while (localObject1 == null);
      Object localObject3;
      synchronized (ae.a)
      {
        localObject3 = sourceDir;
        if (ae.a.contains(localObject3)) {
          return;
        }
      }
      File localFile;
      List localList2;
      List localList1;
      return;
    }
    catch (Exception ???)
    {
      Log.e("MultiDex", "Multidex installation failure", ???);
      throw new RuntimeException("Multi dex installation failed (" + ???.getMessage() + ").");
      ae.a.add(localObject3);
      if (Build.VERSION.SDK_INT > 20) {
        new StringBuilder("MultiDex is not guaranteed to work in SDK version ").append(Build.VERSION.SDK_INT).append(": SDK version higher than 20 should be backed by runtime with built-in multidex capabilty but it's not the ").append("case here: java.vm.version=\"").append(System.getProperty("java.vm.version")).append("\"");
      }
      try
      {
        localObject3 = getClassLoader();
        if (localObject3 == null)
        {
          Log.e("MultiDex", "Context class loader is null. Must be running in test mode. Skip patching.");
          return;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        return;
      }
      localFile = new File(getFilesDir(), "secondary-dexes");
      localList2 = af.a(this, localRuntimeException, localFile, false);
      if (ae.a(localList2)) {
        ae.a((ClassLoader)localObject3, localFile, localList2);
      }
      for (;;)
      {
        return;
        localList1 = af.a(this, localRuntimeException, localFile, true);
        if (!ae.a(localList1)) {
          break;
        }
        ae.a((ClassLoader)localObject3, localFile, localList1);
      }
      throw new RuntimeException("Zip files were not valid.");
    }
    catch (RuntimeException ???) {}
  }
  
  public void onCreate()
  {
    c();
    Iterator localIterator = b.c().iterator();
    while (localIterator.hasNext()) {
      ((jrx)localIterator.next()).a();
    }
    super.onCreate();
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    hxr.a();
  }
  
  public void onTrimMemory(int paramInt)
  {
    super.onTrimMemory(paramInt);
    hxr.a(paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.apps.hangouts.phone.Hangouts_Application
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */