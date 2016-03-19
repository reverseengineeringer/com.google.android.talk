package org.chromium.net;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import mod;
import org.chromium.base.ContextUtils;
import org.chromium.base.annotations.JNINamespace;

@JNINamespace
public class CronetLibraryLoader
{
  private static final Object a = new Object();
  private static boolean b = false;
  
  public static void a(Context paramContext)
  {
    NetworkChangeNotifier.init(paramContext);
    NetworkChangeNotifier.a.a(true, new RegistrationPolicyAlwaysRegister());
    nativeCronetInitOnMainThread();
  }
  
  public static void a(Context paramContext, CronetEngine.Builder paramBuilder)
  {
    synchronized (a)
    {
      if (b) {
        return;
      }
      System.loadLibrary(paramBuilder.f());
      if (!"49.0.2623.15".equals(nativeGetCronetVersion())) {
        throw new RuntimeException(String.format("Expected Cronet version number %s, actual version number %s.", new Object[] { "49.0.2623.15", nativeGetCronetVersion() }));
      }
    }
    ContextUtils.a(paramContext.getApplicationContext());
    paramContext = new mod(paramContext);
    if (Looper.getMainLooper() == Looper.myLooper()) {
      paramContext.run();
    }
    for (;;)
    {
      b = true;
      return;
      new Handler(Looper.getMainLooper()).post(paramContext);
    }
  }
  
  private static native void nativeCronetInitOnMainThread();
  
  private static native String nativeGetCronetVersion();
}

/* Location:
 * Qualified Name:     org.chromium.net.CronetLibraryLoader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */