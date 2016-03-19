package com.google.android.libraries.social.jni.crashreporter;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Build.VERSION;
import android.util.Log;
import com.google.android.apps.common.proguard.UsedByNative;
import hzo;
import java.util.HashMap;

public final class NativeCrashHandler
{
  private static Context a;
  private static Intent b;
  private static Runnable c;
  private static String d;
  private static HashMap<String, String> e;
  private static final String[] f = { "android.graphics" };
  private static boolean g;
  
  private static void a()
  {
    for (;;)
    {
      try
      {
        System.loadLibrary("crashreporterer");
        if (!g) {
          setup();
        }
        g = true;
        return;
      }
      catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
      {
        if (Build.CPU_ABI.equals("armeabi-v7a"))
        {
          System.loadLibrary("crashreporterer-armeabi-v7a");
          continue;
        }
      }
      finally {}
      if (Build.CPU_ABI.equals("arm64-v8a"))
      {
        System.loadLibrary("crashreporterer-arm64-v8a");
      }
      else if (Build.CPU_ABI.equals("x86"))
      {
        System.loadLibrary("crashreporterer-x86");
      }
      else
      {
        if (!Build.CPU_ABI.equals("mips")) {
          break;
        }
        System.loadLibrary("crashreporterer-mips");
      }
    }
    throw ((Throwable)localObject);
  }
  
  public static void a(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 21)
    {
      a();
      a = paramContext.getApplicationContext();
      paramContext = new Intent(a, NativeCrashReporterActivity.class);
      b = paramContext;
      paramContext.setFlags(268435456);
      c = null;
      e = null;
    }
  }
  
  private static boolean a(hzo paramhzo)
  {
    boolean bool2 = false;
    paramhzo = paramhzo.getStackTrace();
    boolean bool1 = bool2;
    int i;
    if (paramhzo != null) {
      i = 0;
    }
    for (;;)
    {
      bool1 = bool2;
      String str;
      int j;
      if (i < paramhzo.length)
      {
        str = paramhzo[i].getClassName();
        if (str != null) {
          j = 0;
        }
      }
      else
      {
        while (j < f.length)
        {
          if (str.contains(f[j]))
          {
            bool1 = true;
            return bool1;
          }
          j += 1;
        }
      }
      i += 1;
    }
  }
  
  @UsedByNative
  private static void reportCrash(int paramInt1, int paramInt2, long paramLong)
  {
    String str = String.valueOf(Long.toHexString(paramLong));
    str = String.valueOf(str).length() + 62 + "Native crash signal: " + paramInt1 + " code: " + paramInt2 + " address: 0x" + str;
    hzo localhzo = new hzo(str);
    Log.e("NativeCrashHandler", str, localhzo);
    if (a(localhzo)) {
      b.putExtra("knownCrash", true);
    }
    if (c != null) {
      c.run();
    }
    if (d != null) {
      b.putExtra("runnableName", d);
    }
    if (e != null) {
      b.putExtra("runnableArgs", e);
    }
    b.putExtra("description", str);
    a.startActivity(b);
  }
  
  private static native void setup();
}

/* Location:
 * Qualified Name:     com.google.android.libraries.social.jni.crashreporter.NativeCrashHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */