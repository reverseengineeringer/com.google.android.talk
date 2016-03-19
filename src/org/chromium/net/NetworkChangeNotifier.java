package org.chromium.net;

import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import mnp;
import mqi;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;
import org.chromium.base.annotations.NativeClassQualifiedName;

@JNINamespace
public class NetworkChangeNotifier
{
  static NetworkChangeNotifier a;
  private final Context b;
  private final ArrayList<Long> c;
  private final mnp<NetworkChangeNotifier.ConnectionTypeObserver> d;
  private NetworkChangeNotifierAutoDetect e;
  private int f = 0;
  private double g = Double.POSITIVE_INFINITY;
  private int h = f;
  
  private NetworkChangeNotifier(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    c = new ArrayList();
    d = new mnp();
  }
  
  public static double a(int paramInt)
  {
    return nativeGetMaxBandwidthForConnectionSubtype(paramInt);
  }
  
  private static void a()
  {
    a.a(false, new RegistrationPolicyApplicationStatus());
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      nativeNotifyConnectionTypeChanged(((Long)localIterator.next()).longValue(), paramInt1, paramInt2);
    }
    localIterator = d.iterator();
    while (localIterator.hasNext()) {
      localIterator.next();
    }
  }
  
  @CalledByNative
  public static void fakeDefaultNetwork(int paramInt1, int paramInt2)
  {
    a();
    a.b(paramInt2, paramInt1);
  }
  
  @CalledByNative
  public static void fakeMaxBandwidthChanged(double paramDouble)
  {
    a();
    a.b(paramDouble);
  }
  
  @CalledByNative
  public static void fakeNetworkConnected(int paramInt1, int paramInt2)
  {
    a();
    a.a(paramInt1, paramInt2);
  }
  
  @CalledByNative
  public static void fakeNetworkDisconnected(int paramInt)
  {
    a();
    a.e(paramInt);
  }
  
  @CalledByNative
  public static void fakeNetworkSoonToBeDisconnected(int paramInt)
  {
    a();
    a.d(paramInt);
  }
  
  @CalledByNative
  public static void fakeUpdateActiveNetworkList(int[] paramArrayOfInt)
  {
    a();
    a.a(paramArrayOfInt);
  }
  
  @CalledByNative
  public static void forceConnectivityState(boolean paramBoolean)
  {
    int i = 0;
    a();
    NetworkChangeNotifier localNetworkChangeNotifier = a;
    boolean bool;
    if (f != 6)
    {
      bool = true;
      if (bool != paramBoolean)
      {
        if (!paramBoolean) {
          break label60;
        }
        label33:
        localNetworkChangeNotifier.b(i);
        if (!paramBoolean) {
          break label66;
        }
      }
    }
    label60:
    label66:
    for (double d1 = Double.POSITIVE_INFINITY;; d1 = 0.0D)
    {
      localNetworkChangeNotifier.a(d1);
      return;
      bool = false;
      break;
      i = 6;
      break label33;
    }
  }
  
  @CalledByNative
  public static NetworkChangeNotifier init(Context paramContext)
  {
    if (a == null) {
      a = new NetworkChangeNotifier(paramContext);
    }
    return a;
  }
  
  private static native double nativeGetMaxBandwidthForConnectionSubtype(int paramInt);
  
  @NativeClassQualifiedName
  private native void nativeNotifyConnectionTypeChanged(long paramLong, int paramInt1, int paramInt2);
  
  @NativeClassQualifiedName
  private native void nativeNotifyMaxBandwidthChanged(long paramLong, double paramDouble);
  
  @NativeClassQualifiedName
  private native void nativeNotifyOfNetworkConnect(long paramLong, int paramInt1, int paramInt2);
  
  @NativeClassQualifiedName
  private native void nativeNotifyOfNetworkDisconnect(long paramLong, int paramInt);
  
  @NativeClassQualifiedName
  private native void nativeNotifyOfNetworkSoonToDisconnect(long paramLong, int paramInt);
  
  @NativeClassQualifiedName
  private native void nativeNotifyUpdateActiveNetworkList(long paramLong, int[] paramArrayOfInt);
  
  public void a(double paramDouble)
  {
    if ((paramDouble == g) && (f == h)) {
      return;
    }
    g = paramDouble;
    h = f;
    b(paramDouble);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      nativeNotifyOfNetworkConnect(((Long)localIterator.next()).longValue(), paramInt1, paramInt2);
    }
  }
  
  void a(boolean paramBoolean, NetworkChangeNotifierAutoDetect.RegistrationPolicy paramRegistrationPolicy)
  {
    if (paramBoolean) {
      if (e == null)
      {
        e = new NetworkChangeNotifierAutoDetect(new mqi(this), b, paramRegistrationPolicy);
        paramRegistrationPolicy = e.d();
        b(e.a(paramRegistrationPolicy));
        a(e.b(paramRegistrationPolicy));
      }
    }
    while (e == null) {
      return;
    }
    e.a();
    e = null;
  }
  
  public void a(int[] paramArrayOfInt)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      nativeNotifyUpdateActiveNetworkList(((Long)localIterator.next()).longValue(), paramArrayOfInt);
    }
  }
  
  @CalledByNative
  public void addNativeObserver(long paramLong)
  {
    c.add(Long.valueOf(paramLong));
  }
  
  void b(double paramDouble)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      nativeNotifyMaxBandwidthChanged(((Long)localIterator.next()).longValue(), paramDouble);
    }
  }
  
  public void b(int paramInt)
  {
    f = paramInt;
    c(paramInt);
  }
  
  void c(int paramInt)
  {
    b(paramInt, getCurrentDefaultNetId());
  }
  
  public void d(int paramInt)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      nativeNotifyOfNetworkSoonToDisconnect(((Long)localIterator.next()).longValue(), paramInt);
    }
  }
  
  public void e(int paramInt)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      nativeNotifyOfNetworkDisconnect(((Long)localIterator.next()).longValue(), paramInt);
    }
  }
  
  @CalledByNative
  public int getCurrentConnectionType()
  {
    return f;
  }
  
  @CalledByNative
  public int getCurrentDefaultNetId()
  {
    if (e == null) {
      return -1;
    }
    return e.f();
  }
  
  @CalledByNative
  public double getCurrentMaxBandwidthInMbps()
  {
    return g;
  }
  
  @CalledByNative
  public int[] getCurrentNetworksAndTypes()
  {
    if (e == null) {
      return new int[0];
    }
    return e.e();
  }
  
  @CalledByNative
  public void removeNativeObserver(long paramLong)
  {
    c.remove(Long.valueOf(paramLong));
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.NetworkChangeNotifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */