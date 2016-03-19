package org.chromium.net;

import android.os.Build.VERSION;
import android.os.ConditionVariable;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicInteger;
import mnp;
import moc;
import moo;
import mop;
import moq;
import mor;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;
import org.chromium.base.annotations.NativeClassQualifiedName;
import org.chromium.base.annotations.UsedByReflection;

@JNINamespace
@UsedByReflection
public class CronetUrlRequestContext
  extends CronetEngine
{
  public final Object a = new Object();
  public long b = 0L;
  public final Object c = new Object();
  public final mnp<NetworkQualityRttListener> d = new mnp();
  public final mnp<NetworkQualityThroughputListener> e = new mnp();
  public final mnp<CronetEngine.RequestFinishedListener> f = new mnp();
  private final ConditionVariable g = new ConditionVariable(false);
  private final AtomicInteger h = new AtomicInteger(0);
  private Thread i;
  private Executor j;
  private boolean k;
  
  @UsedByReflection
  public CronetUrlRequestContext(CronetEngine.Builder paramBuilder)
  {
    CronetLibraryLoader.a(paramBuilder.w(), paramBuilder);
    if (Log.isLoggable("ChromiumNetwork", 2)) {
      m = -2;
    }
    for (;;)
    {
      nativeSetMinLogLevel(m);
      b = nativeCreateRequestContextAdapter(b(paramBuilder));
      if (b != 0L) {
        break;
      }
      throw new NullPointerException("Context Adapter creation failed.");
      if (Log.isLoggable("ChromiumNetwork", 3)) {
        m = -1;
      }
    }
    paramBuilder = new moo(this);
    if (Looper.getMainLooper() == Looper.myLooper())
    {
      paramBuilder.run();
      return;
    }
    new Handler(Looper.getMainLooper()).post(paramBuilder);
  }
  
  static long b(CronetEngine.Builder paramBuilder)
  {
    long l = nativeCreateRequestContextConfig(paramBuilder.b(), paramBuilder.c(), paramBuilder.g(), paramBuilder.i(), paramBuilder.k(), paramBuilder.l(), paramBuilder.m(), paramBuilder.n(), paramBuilder.o(), paramBuilder.p(), paramBuilder.r(), paramBuilder.q(), paramBuilder.u(), paramBuilder.v());
    Object localObject = paramBuilder.s().iterator();
    while (((Iterator)localObject).hasNext())
    {
      moc localmoc = (moc)((Iterator)localObject).next();
      nativeAddQuicHint(l, a, b, c);
    }
    paramBuilder = paramBuilder.t().iterator();
    while (paramBuilder.hasNext())
    {
      localObject = (CronetEngine.Builder.Pkp)paramBuilder.next();
      nativeAddPkp(l, a, b, c, d.getTime());
    }
    return l;
  }
  
  private void f()
  {
    if (b != 0L) {}
    for (int m = 1; m == 0; m = 0) {
      throw new IllegalStateException("Engine is shut down.");
    }
  }
  
  @CalledByNative
  private void initNetworkThread()
  {
    synchronized (a)
    {
      i = Thread.currentThread();
      g.open();
      Thread.currentThread().setName("ChromiumNet");
      Process.setThreadPriority(10);
      return;
    }
  }
  
  private static native void nativeAddPkp(long paramLong1, String paramString, byte[][] paramArrayOfByte, boolean paramBoolean, long paramLong2);
  
  private static native void nativeAddQuicHint(long paramLong, String paramString, int paramInt1, int paramInt2);
  
  private static native long nativeCreateRequestContextAdapter(long paramLong);
  
  private static native long nativeCreateRequestContextConfig(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, String paramString3, String paramString4, String paramString5, String paramString6, boolean paramBoolean4, int paramInt, long paramLong1, String paramString7, long paramLong2);
  
  @NativeClassQualifiedName
  private native void nativeDestroy(long paramLong);
  
  @NativeClassQualifiedName
  private native void nativeEnableNetworkQualityEstimator(long paramLong, boolean paramBoolean1, boolean paramBoolean2);
  
  private static native byte[] nativeGetHistogramDeltas();
  
  @NativeClassQualifiedName
  private native void nativeInitRequestContextOnMainThread(long paramLong);
  
  @NativeClassQualifiedName
  private native void nativeProvideRTTObservations(long paramLong, boolean paramBoolean);
  
  @NativeClassQualifiedName
  private native void nativeProvideThroughputObservations(long paramLong, boolean paramBoolean);
  
  private static native int nativeSetMinLogLevel(int paramInt);
  
  @NativeClassQualifiedName
  private native void nativeStartNetLogToFile(long paramLong, String paramString, boolean paramBoolean);
  
  @NativeClassQualifiedName
  private native void nativeStopNetLog(long paramLong);
  
  @CalledByNative
  private void onRttObservation(int paramInt1, long paramLong, int paramInt2)
  {
    a(new mop(this, paramInt1, paramLong, paramInt2));
  }
  
  @CalledByNative
  private void onThroughputObservation(int paramInt1, long paramLong, int paramInt2)
  {
    a(new moq(this, paramInt1, paramLong, paramInt2));
  }
  
  public UrlRequest a(String paramString, UrlRequest.Callback paramCallback, Executor paramExecutor, int paramInt, Collection<Object> paramCollection)
  {
    synchronized (a)
    {
      f();
      boolean bool2 = k;
      boolean bool1 = bool2;
      if (bool2) {}
      synchronized (c)
      {
        if (!f.a())
        {
          bool1 = true;
          paramString = new CronetUrlRequest(this, paramString, paramInt, paramCallback, paramExecutor, paramCollection, bool1);
          return paramString;
        }
        bool1 = false;
      }
    }
  }
  
  void a(Runnable paramRunnable)
  {
    try
    {
      j.execute(paramRunnable);
      return;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      Log.e("ChromiumNetwork", "Exception posting task to executor", paramRunnable);
    }
  }
  
  void a(CronetUrlRequest paramCronetUrlRequest)
  {
    if (k) {
      a(new mor(this, paramCronetUrlRequest));
    }
  }
  
  public boolean a()
  {
    return Build.VERSION.SDK_INT >= 14;
  }
  
  public String b()
  {
    return "Cronet/" + Version.a();
  }
  
  void c()
  {
    h.incrementAndGet();
  }
  
  void d()
  {
    h.decrementAndGet();
  }
  
  long e()
  {
    synchronized (a)
    {
      f();
      long l = b;
      return l;
    }
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.CronetUrlRequestContext
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */