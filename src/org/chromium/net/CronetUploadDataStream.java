package org.chromium.net;

import java.nio.ByteBuffer;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import moe;
import mof;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;
import org.chromium.base.annotations.NativeClassQualifiedName;

@JNINamespace
public final class CronetUploadDataStream
  implements UploadDataSink
{
  public final UploadDataProvider a;
  public ByteBuffer b = null;
  public final Object c = new Object();
  public long d = 0L;
  public boolean e = false;
  public boolean f = false;
  private final Executor g;
  private final long h;
  private CronetUrlRequest i;
  private final Runnable j = new moe(this);
  private boolean k = false;
  private Runnable l;
  
  public CronetUploadDataStream(UploadDataProvider paramUploadDataProvider, Executor paramExecutor)
  {
    g = paramExecutor;
    a = paramUploadDataProvider;
    h = a.a();
  }
  
  private void a(Runnable paramRunnable)
  {
    try
    {
      g.execute(paramRunnable);
      return;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      i.b(paramRunnable);
    }
  }
  
  private void c()
  {
    synchronized (c)
    {
      if (e)
      {
        k = true;
        return;
      }
      if (d == 0L) {
        return;
      }
    }
    nativeDestroy(d);
    d = 0L;
    if (l != null) {
      l.run();
    }
  }
  
  private void d()
  {
    synchronized (c)
    {
      if (e) {
        throw new IllegalStateException("Method should not be called when read has not completed.");
      }
    }
    if (k) {
      c();
    }
  }
  
  private native long nativeAttachUploadDataToRequest(long paramLong1, long paramLong2);
  
  private native long nativeCreateAdapterForTesting();
  
  private native long nativeCreateUploadDataStreamForTesting(long paramLong1, long paramLong2);
  
  @NativeClassQualifiedName
  private static native void nativeDestroy(long paramLong);
  
  @NativeClassQualifiedName
  private native void nativeOnReadSucceeded(long paramLong, int paramInt, boolean paramBoolean);
  
  @NativeClassQualifiedName
  private native void nativeOnRewindSucceeded(long paramLong);
  
  public void a()
  {
    synchronized (c)
    {
      if (!e) {
        throw new IllegalStateException("Non-existent read succeeded.");
      }
    }
    int m = b.position();
    b = null;
    e = false;
    d();
    if (d == 0L) {
      return;
    }
    nativeOnReadSucceeded(d, m, false);
  }
  
  public void a(Exception paramException)
  {
    synchronized (c)
    {
      if ((!e) && (!f)) {
        throw new IllegalStateException("There is no read or rewind in progress.");
      }
    }
    e = false;
    f = false;
    b = null;
    d();
    i.b(paramException);
  }
  
  void a(CronetUrlRequest paramCronetUrlRequest, long paramLong)
  {
    i = paramCronetUrlRequest;
    d = nativeAttachUploadDataToRequest(paramLong, h);
  }
  
  public void b()
  {
    synchronized (c)
    {
      if (!f) {
        throw new IllegalStateException("Non-existent rewind succeeded.");
      }
    }
    f = false;
    if (d == 0L) {
      return;
    }
    nativeOnRewindSucceeded(d);
  }
  
  @CalledByNative
  void onUploadDataStreamDestroyed()
  {
    c();
  }
  
  @CalledByNative
  void readData(ByteBuffer paramByteBuffer)
  {
    b = paramByteBuffer;
    a(j);
  }
  
  @CalledByNative
  void rewind()
  {
    a(new mof(this));
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.CronetUploadDataStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */