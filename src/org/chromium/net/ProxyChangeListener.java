package org.chromium.net;

import android.content.Context;
import android.content.IntentFilter;
import mqs;
import mqt;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;
import org.chromium.base.annotations.NativeClassQualifiedName;

@JNINamespace
public class ProxyChangeListener
{
  private static boolean a = true;
  private long b;
  private Context c;
  private mqt d;
  
  private ProxyChangeListener(Context paramContext)
  {
    c = paramContext;
  }
  
  @CalledByNative
  public static ProxyChangeListener create(Context paramContext)
  {
    return new ProxyChangeListener(paramContext);
  }
  
  @CalledByNative
  public static String getProperty(String paramString)
  {
    return System.getProperty(paramString);
  }
  
  @NativeClassQualifiedName
  private native void nativeProxySettingsChanged(long paramLong);
  
  @NativeClassQualifiedName
  private native void nativeProxySettingsChangedTo(long paramLong, String paramString1, int paramInt, String paramString2, String[] paramArrayOfString);
  
  public void a(mqs parammqs)
  {
    if (!a) {}
    while (b == 0L) {
      return;
    }
    if (parammqs != null)
    {
      nativeProxySettingsChangedTo(b, a, b, c, d);
      return;
    }
    nativeProxySettingsChanged(b);
  }
  
  @CalledByNative
  public void start(long paramLong)
  {
    b = paramLong;
    if (d == null)
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.PROXY_CHANGE");
      d = new mqt(this);
      c.getApplicationContext().registerReceiver(d, localIntentFilter);
    }
  }
  
  @CalledByNative
  public void stop()
  {
    b = 0L;
    if (d != null)
    {
      c.unregisterReceiver(d);
      d = null;
    }
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.ProxyChangeListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */