package org.chromium.net;

import aal;
import android.os.SystemClock;
import android.util.Log;
import java.nio.ByteBuffer;
import java.util.AbstractMap.SimpleImmutableEntry;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import mog;
import moh;
import moi;
import moj;
import mok;
import mol;
import mom;
import mon;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;
import org.chromium.base.annotations.NativeClassQualifiedName;

@JNINamespace
public final class CronetUrlRequest
  implements UrlRequest
{
  private static final CronetEngine.UrlRequestMetrics g = new CronetEngine.UrlRequestMetrics(null, null, null);
  public long a;
  public boolean b = false;
  public boolean c = false;
  public final Object d = new Object();
  public final UrlRequest.Callback e;
  public UrlResponseInfo f;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private final CronetUrlRequestContext k;
  private final Executor l;
  private final List<String> m = new ArrayList();
  private long n;
  private final String o;
  private final int p;
  private String q;
  private final CronetUrlRequest.HeadersList r = new CronetUrlRequest.HeadersList();
  private final Collection<Object> s;
  private final mon t;
  private CronetUploadDataStream u;
  private mom v;
  private Runnable w;
  
  CronetUrlRequest(String paramString, int paramInt)
  {
    if (paramInt == null) {
      throw new NullPointerException("URL is required");
    }
    UrlRequest.Callback localCallback;
    if (localCallback == null) {
      throw new NullPointerException("Listener is required");
    }
    Executor localExecutor;
    if (localExecutor == null) {
      throw new NullPointerException("Executor is required");
    }
    Collection localCollection;
    if (localCollection == null) {
      throw new NullPointerException("requestAnnotations is required");
    }
    k = paramString;
    o = paramInt;
    m.add(paramInt);
    int i1;
    switch (i1)
    {
    default: 
      i3 = 3;
    case 0: 
      p = i3;
      e = localCallback;
      l = localExecutor;
      s = localCollection;
      int i2;
      if (i2 == 0) {
        break;
      }
    }
    for (paramString = new mon(this);; paramString = null)
    {
      t = paramString;
      return;
      i3 = 1;
      break;
      i3 = 2;
      break;
      i3 = 3;
      break;
      i3 = 4;
      break;
    }
  }
  
  private UrlResponseInfo a(int paramInt, String[] paramArrayOfString)
  {
    long l1;
    synchronized (d)
    {
      if (a == 0L) {
        return null;
      }
      l1 = a;
      ??? = new CronetUrlRequest.HeadersList();
      int i1 = 0;
      if (i1 < paramArrayOfString.length)
      {
        ((CronetUrlRequest.HeadersList)???).add(new AbstractMap.SimpleImmutableEntry(paramArrayOfString[i1], paramArrayOfString[(i1 + 1)]));
        i1 += 2;
      }
    }
    return new UrlResponseInfo(new ArrayList(m), paramInt, nativeGetHttpStatusText(l1), (List)???, nativeGetWasCached(l1), nativeGetNegotiatedProtocol(l1), nativeGetProxyServer(l1));
  }
  
  private void a(Runnable arg1)
  {
    try
    {
      l.execute(???);
      return;
    }
    catch (RejectedExecutionException ???)
    {
      Log.e("ChromiumNetwork", "Exception posting task to executor", ???);
      synchronized (d)
      {
        if ((c()) || (!h)) {
          return;
        }
      }
      a(true);
    }
  }
  
  private void a(UrlRequestException paramUrlRequestException)
  {
    a(new mog(this, paramUrlRequestException));
  }
  
  private void f()
  {
    synchronized (d)
    {
      if ((h) || (c())) {
        throw new IllegalStateException("Request is already started.");
      }
    }
  }
  
  @NativeClassQualifiedName
  private native boolean nativeAddRequestHeader(long paramLong, String paramString1, String paramString2);
  
  private native long nativeCreateRequestAdapter(long paramLong, String paramString, int paramInt);
  
  @NativeClassQualifiedName
  private native void nativeDestroy(long paramLong, boolean paramBoolean);
  
  @NativeClassQualifiedName
  private native void nativeDisableCache(long paramLong);
  
  @NativeClassQualifiedName
  private native void nativeFollowDeferredRedirect(long paramLong);
  
  @NativeClassQualifiedName
  private native String nativeGetHttpStatusText(long paramLong);
  
  @NativeClassQualifiedName
  private native String nativeGetNegotiatedProtocol(long paramLong);
  
  @NativeClassQualifiedName
  private native String nativeGetProxyServer(long paramLong);
  
  @NativeClassQualifiedName
  private native void nativeGetStatus(long paramLong, UrlRequest.StatusListener paramStatusListener);
  
  @NativeClassQualifiedName
  private native boolean nativeGetWasCached(long paramLong);
  
  @NativeClassQualifiedName
  private native boolean nativeReadData(long paramLong, ByteBuffer paramByteBuffer, int paramInt1, int paramInt2);
  
  @NativeClassQualifiedName
  private native boolean nativeSetHttpMethod(long paramLong, String paramString);
  
  @NativeClassQualifiedName
  private native void nativeStart(long paramLong);
  
  @CalledByNative
  private void onCanceled()
  {
    a(new mok(this));
  }
  
  @CalledByNative
  private void onError(int paramInt, String paramString, long paramLong)
  {
    if (f != null) {
      f.a(n + paramLong);
    }
    a(new UrlRequestException("Exception in CronetUrlRequest: " + paramString, paramInt));
  }
  
  @CalledByNative
  private void onReadCompleted(ByteBuffer paramByteBuffer, int paramInt1, int paramInt2, long paramLong)
  {
    f.a(n + paramLong);
    if (paramByteBuffer.position() != paramInt2)
    {
      a(new UrlRequestException("ByteBuffer modified externally during read", null));
      return;
    }
    if (v == null) {
      v = new mom(this);
    }
    if (j) {
      paramByteBuffer.limit(paramInt2 + paramInt1);
    }
    for (;;)
    {
      v.a = paramByteBuffer;
      a(v);
      return;
      paramByteBuffer.position(paramInt2 + paramInt1);
    }
  }
  
  @CalledByNative
  private void onRedirectReceived(String paramString, int paramInt, String[] paramArrayOfString, long paramLong)
  {
    paramArrayOfString = a(paramInt, paramArrayOfString);
    n += paramLong;
    paramArrayOfString.a(n);
    m.add(paramString);
    a(new moh(this, paramArrayOfString, paramString));
  }
  
  @CalledByNative
  private void onResponseStarted(int paramInt, String[] paramArrayOfString)
  {
    if (t != null)
    {
      mon localmon = t;
      if ((a != null) && (b == null)) {
        b = Long.valueOf(SystemClock.elapsedRealtime() - a.longValue());
      }
    }
    f = a(paramInt, paramArrayOfString);
    a(new moi(this));
  }
  
  @CalledByNative
  private void onStatus(UrlRequest.StatusListener paramStatusListener, int paramInt)
  {
    a(new mol(this, paramStatusListener, paramInt));
  }
  
  @CalledByNative
  private void onSucceeded(long paramLong)
  {
    f.a(n + paramLong);
    a(new moj(this));
  }
  
  public void a()
  {
    int i1 = 0;
    synchronized (d)
    {
      f();
      try
      {
        a = nativeCreateRequestAdapter(k.e(), o, p);
        k.c();
        if ((q != null) && (!nativeSetHttpMethod(a, q))) {
          throw new IllegalArgumentException("Invalid http method " + q);
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        a(false);
        throw localRuntimeException;
      }
    }
    Object localObject3 = r.iterator();
    for (;;)
    {
      Map.Entry localEntry;
      if (((Iterator)localObject3).hasNext())
      {
        localEntry = (Map.Entry)((Iterator)localObject3).next();
        if ((!((String)localEntry.getKey()).equalsIgnoreCase("Content-Type")) || (((String)localEntry.getValue()).isEmpty())) {
          break label360;
        }
        i1 = 1;
      }
      label360:
      while (!nativeAddRequestHeader(a, (String)localEntry.getKey(), (String)localEntry.getValue()))
      {
        throw new IllegalArgumentException("Invalid header " + (String)localEntry.getKey() + "=" + (String)localEntry.getValue());
        if (u != null)
        {
          if (i1 == 0) {
            throw new IllegalArgumentException("Requests with upload data must have a Content-Type.");
          }
          u.a(this, a);
        }
        if (i) {
          nativeDisableCache(a);
        }
        h = true;
        if (t != null)
        {
          localObject3 = t;
          if (a != null) {
            throw new IllegalStateException("onRequestStarted called repeatedly");
          }
          a = Long.valueOf(SystemClock.elapsedRealtime());
        }
        nativeStart(a);
        return;
      }
    }
  }
  
  public void a(Exception arg1)
  {
    UrlRequestException localUrlRequestException = new UrlRequestException("CalledByNative method has thrown an exception", ???);
    Log.e("ChromiumNetwork", "Exception in CalledByNative method", ???);
    synchronized (d)
    {
      if (c()) {
        return;
      }
      a(false);
      try
      {
        e.a(f, localUrlRequestException);
        return;
      }
      catch (Exception ???)
      {
        Log.e("ChromiumNetwork", "Exception notifying of failed request", ???);
        return;
      }
    }
  }
  
  public void a(String paramString)
  {
    f();
    if (paramString == null) {
      throw new NullPointerException("Method is required.");
    }
    q = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    f();
    if (paramString1 == null) {
      throw new NullPointerException("Invalid header name.");
    }
    if (paramString2 == null) {
      throw new NullPointerException("Invalid header value.");
    }
    r.add(new AbstractMap.SimpleImmutableEntry(paramString1, paramString2));
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    aal.c(paramByteBuffer);
    aal.b(paramByteBuffer);
    synchronized (d)
    {
      if (!c) {
        throw new IllegalStateException("Unexpected read attempt.");
      }
    }
    c = false;
    j = false;
    if (c()) {
      return;
    }
    if (!nativeReadData(a, paramByteBuffer, paramByteBuffer.position(), paramByteBuffer.limit()))
    {
      c = true;
      throw new IllegalArgumentException("Unable to call native read");
    }
  }
  
  public void a(UploadDataProvider paramUploadDataProvider, Executor paramExecutor)
  {
    if (paramUploadDataProvider == null) {
      throw new NullPointerException("Invalid UploadDataProvider.");
    }
    if (q == null) {
      q = "POST";
    }
    u = new CronetUploadDataStream(paramUploadDataProvider, paramExecutor);
  }
  
  public void a(boolean paramBoolean)
  {
    synchronized (d)
    {
      if (a == 0L) {
        return;
      }
      if (t != null)
      {
        mon localmon = t;
        if ((a != null) && (c == null)) {
          c = Long.valueOf(SystemClock.elapsedRealtime() - a.longValue());
        }
      }
      nativeDestroy(a, paramBoolean);
      k.a(this);
      k.d();
      a = 0L;
      if (w != null) {
        w.run();
      }
      return;
    }
  }
  
  public void b()
  {
    synchronized (d)
    {
      if (!b) {
        throw new IllegalStateException("No redirect to follow.");
      }
    }
    b = false;
    if (c()) {
      return;
    }
    nativeFollowDeferredRedirect(a);
  }
  
  void b(Exception paramException)
  {
    UrlRequestException localUrlRequestException = new UrlRequestException("Exception received from UploadDataProvider", paramException);
    Log.e("ChromiumNetwork", "Exception in upload method", paramException);
    a(localUrlRequestException);
  }
  
  public boolean c()
  {
    for (;;)
    {
      synchronized (d)
      {
        if ((h) && (a == 0L))
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void d()
  {
    f();
    i = true;
  }
  
  public CronetEngine.UrlRequestInfo e()
  {
    String str = o;
    Collection localCollection = s;
    Long localLong1;
    Long localLong2;
    long l1;
    if (t != null)
    {
      localObject = t;
      localLong1 = b;
      localLong2 = c;
      if (d.f != null) {
        l1 = d.f.d();
      }
    }
    for (Object localObject = new CronetEngine.UrlRequestMetrics(localLong1, localLong2, Long.valueOf(l1));; localObject = g)
    {
      return new CronetEngine.UrlRequestInfo(str, localCollection, (CronetEngine.UrlRequestMetrics)localObject, f);
      l1 = 0L;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.CronetUrlRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */