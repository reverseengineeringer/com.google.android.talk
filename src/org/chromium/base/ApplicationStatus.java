package org.chromium.base;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import atn;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import mnj;
import mnl;
import mnp;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;

@JNINamespace
public class ApplicationStatus
{
  public static Activity a;
  public static atn b;
  public static final mnp<atn> c = new mnp();
  private static Object d = new Object();
  private static Integer e;
  private static final Map<Activity, mnl> f = new ConcurrentHashMap();
  private static final mnp<Object> g = new mnp();
  
  public static void a(atn paramatn)
  {
    c.a(paramatn);
  }
  
  @CalledByNative
  public static int getStateForApplication()
  {
    int i = 0;
    int k = 1;
    for (;;)
    {
      int j;
      int m;
      synchronized (d)
      {
        if (e == null)
        {
          Iterator localIterator = f.values().iterator();
          j = 0;
          if (!localIterator.hasNext()) {
            break label127;
          }
          m = ((mnl)localIterator.next()).a();
          if ((m != 4) && (m != 5) && (m != 6))
          {
            i = k;
            e = Integer.valueOf(i);
          }
        }
        else
        {
          i = e.intValue();
          return i;
        }
      }
      for (;;)
      {
        break label124;
        if (m == 4)
        {
          j = 1;
          break;
        }
        if (m == 5) {
          i = 1;
        }
      }
      label124:
      continue;
      label127:
      if (j != 0) {
        i = 2;
      } else if (i != 0) {
        i = 3;
      } else {
        i = 4;
      }
    }
  }
  
  private static native void nativeOnApplicationStateChange(int paramInt);
  
  @CalledByNative
  private static void registerThreadSafeNativeApplicationStateListener()
  {
    mnj localmnj = new mnj();
    if (ThreadUtils.a().getLooper() == Looper.myLooper()) {}
    for (int i = 1; i != 0; i = 0)
    {
      localmnj.run();
      return;
    }
    ThreadUtils.a().post(localmnj);
  }
}

/* Location:
 * Qualified Name:     org.chromium.base.ApplicationStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */