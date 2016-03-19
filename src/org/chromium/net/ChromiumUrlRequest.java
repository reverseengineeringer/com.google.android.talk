package org.chromium.net;

import android.util.Log;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.chromium.base.annotations.CalledByNative;
import org.chromium.base.annotations.JNINamespace;

@Deprecated
@JNINamespace
public class ChromiumUrlRequest
  implements HttpUrlRequest
{
  private boolean A;
  private int B = 0;
  private String C;
  private String D;
  private long E;
  private int F = 0;
  private String G;
  private final Object H = new Object();
  private long a;
  private final ChromiumUrlRequestContext b;
  private final String c;
  private final int d;
  private final Map<String, String> e;
  private final WritableByteChannel f;
  private Map<String, String> g;
  private String h;
  private String i;
  private byte[] j;
  private ReadableByteChannel k;
  private boolean l;
  private IOException m;
  private volatile boolean n;
  private volatile boolean o;
  private volatile boolean p;
  private boolean q;
  private long r;
  private final HttpUrlRequestListener s;
  private boolean t;
  private long u;
  private long v;
  private boolean w;
  private boolean x;
  private boolean y;
  private long z;
  
  public ChromiumUrlRequest(ChromiumUrlRequestContext paramChromiumUrlRequestContext, String paramString, int paramInt, Map<String, String> paramMap, WritableByteChannel paramWritableByteChannel, HttpUrlRequestListener paramHttpUrlRequestListener)
  {
    if (paramChromiumUrlRequestContext == null) {
      throw new NullPointerException("Context is required");
    }
    if (paramString == null) {
      throw new NullPointerException("URL is required");
    }
    b = paramChromiumUrlRequestContext;
    c = paramString;
    switch (paramInt)
    {
    default: 
      i1 = 3;
    }
    for (;;)
    {
      d = i1;
      e = paramMap;
      f = paramWritableByteChannel;
      a = nativeCreateRequestAdapter(b.a(), c, d);
      s = paramHttpUrlRequestListener;
      return;
      i1 = 1;
      continue;
      i1 = 2;
      continue;
      i1 = 3;
      continue;
      i1 = 4;
    }
  }
  
  public ChromiumUrlRequest(ChromiumUrlRequestContext paramChromiumUrlRequestContext, String paramString, int paramInt, Map<String, String> paramMap, HttpUrlRequestListener paramHttpUrlRequestListener)
  {
    this(paramChromiumUrlRequestContext, paramString, paramInt, paramMap, new ChunkedWritableByteChannel(), paramHttpUrlRequestListener);
    t = true;
  }
  
  private void a(Exception paramException)
  {
    m = new IOException("CalledByNative method has thrown an exception", paramException);
    Log.e("ChromiumNetwork", "Exception in CalledByNative method", paramException);
    try
    {
      i();
      return;
    }
    catch (Exception paramException)
    {
      Log.e("ChromiumNetwork", "Exception trying to cancel request", paramException);
    }
  }
  
  private static void b(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("contentType is required");
    }
  }
  
  /* Error */
  @CalledByNative
  private void finish()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 66	org/chromium/net/ChromiumUrlRequest:H	Ljava/lang/Object;
    //   4: astore_1
    //   5: aload_1
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 141	org/chromium/net/ChromiumUrlRequest:A	Z
    //   11: ifeq +8 -> 19
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 143	org/chromium/net/ChromiumUrlRequest:q	Z
    //   19: aload_0
    //   20: iconst_1
    //   21: putfield 145	org/chromium/net/ChromiumUrlRequest:p	Z
    //   24: aload_0
    //   25: getfield 96	org/chromium/net/ChromiumUrlRequest:a	J
    //   28: lconst_0
    //   29: lcmp
    //   30: ifne +6 -> 36
    //   33: aload_1
    //   34: monitorexit
    //   35: return
    //   36: aload_0
    //   37: getfield 85	org/chromium/net/ChromiumUrlRequest:f	Ljava/nio/channels/WritableByteChannel;
    //   40: invokeinterface 150 1 0
    //   45: aload_0
    //   46: getfield 152	org/chromium/net/ChromiumUrlRequest:k	Ljava/nio/channels/ReadableByteChannel;
    //   49: ifnull +24 -> 73
    //   52: aload_0
    //   53: getfield 152	org/chromium/net/ChromiumUrlRequest:k	Ljava/nio/channels/ReadableByteChannel;
    //   56: invokeinterface 158 1 0
    //   61: ifeq +12 -> 73
    //   64: aload_0
    //   65: getfield 152	org/chromium/net/ChromiumUrlRequest:k	Ljava/nio/channels/ReadableByteChannel;
    //   68: invokeinterface 159 1 0
    //   73: aload_0
    //   74: aload_0
    //   75: aload_0
    //   76: getfield 96	org/chromium/net/ChromiumUrlRequest:a	J
    //   79: invokespecial 163	org/chromium/net/ChromiumUrlRequest:nativeGetErrorCode	(J)I
    //   82: putfield 64	org/chromium/net/ChromiumUrlRequest:F	I
    //   85: aload_0
    //   86: aload_0
    //   87: aload_0
    //   88: getfield 96	org/chromium/net/ChromiumUrlRequest:a	J
    //   91: invokespecial 167	org/chromium/net/ChromiumUrlRequest:nativeGetErrorString	(J)Ljava/lang/String;
    //   94: putfield 169	org/chromium/net/ChromiumUrlRequest:G	Ljava/lang/String;
    //   97: aload_0
    //   98: getfield 64	org/chromium/net/ChromiumUrlRequest:F	I
    //   101: ifeq +27 -> 128
    //   104: aload_0
    //   105: aload_0
    //   106: aload_0
    //   107: getfield 96	org/chromium/net/ChromiumUrlRequest:a	J
    //   110: invokespecial 172	org/chromium/net/ChromiumUrlRequest:nativeGetHttpStatusCode	(J)I
    //   113: putfield 62	org/chromium/net/ChromiumUrlRequest:B	I
    //   116: aload_0
    //   117: aload_0
    //   118: aload_0
    //   119: getfield 96	org/chromium/net/ChromiumUrlRequest:a	J
    //   122: invokespecial 175	org/chromium/net/ChromiumUrlRequest:nativeGetHttpStatusText	(J)Ljava/lang/String;
    //   125: putfield 177	org/chromium/net/ChromiumUrlRequest:C	Ljava/lang/String;
    //   128: aload_0
    //   129: getfield 98	org/chromium/net/ChromiumUrlRequest:s	Lorg/chromium/net/HttpUrlRequestListener;
    //   132: aload_0
    //   133: invokeinterface 182 2 0
    //   138: aload_0
    //   139: aload_0
    //   140: getfield 96	org/chromium/net/ChromiumUrlRequest:a	J
    //   143: invokespecial 186	org/chromium/net/ChromiumUrlRequest:nativeDestroyRequestAdapter	(J)V
    //   146: aload_0
    //   147: lconst_0
    //   148: putfield 96	org/chromium/net/ChromiumUrlRequest:a	J
    //   151: aload_1
    //   152: monitorexit
    //   153: return
    //   154: astore_2
    //   155: aload_1
    //   156: monitorexit
    //   157: aload_2
    //   158: athrow
    //   159: astore_1
    //   160: aload_0
    //   161: new 115	java/io/IOException
    //   164: dup
    //   165: ldc -68
    //   167: aload_1
    //   168: invokespecial 120	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   171: putfield 122	org/chromium/net/ChromiumUrlRequest:m	Ljava/io/IOException;
    //   174: return
    //   175: astore_2
    //   176: goto -103 -> 73
    //   179: astore_2
    //   180: goto -135 -> 45
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	ChromiumUrlRequest
    //   159	9	1	localException	Exception
    //   154	4	2	localObject2	Object
    //   175	1	2	localIOException1	IOException
    //   179	1	2	localIOException2	IOException
    // Exception table:
    //   from	to	target	type
    //   7	19	154	finally
    //   19	35	154	finally
    //   36	45	154	finally
    //   45	73	154	finally
    //   73	128	154	finally
    //   128	153	154	finally
    //   155	157	154	finally
    //   0	7	159	java/lang/Exception
    //   157	159	159	java/lang/Exception
    //   45	73	175	java/io/IOException
    //   36	45	179	java/io/IOException
  }
  
  private native void nativeAddHeader(long paramLong, String paramString1, String paramString2);
  
  private native void nativeAppendChunk(long paramLong, ByteBuffer paramByteBuffer, int paramInt, boolean paramBoolean);
  
  private native void nativeCancel(long paramLong);
  
  private native long nativeCreateRequestAdapter(long paramLong, String paramString, int paramInt);
  
  private native void nativeDestroyRequestAdapter(long paramLong);
  
  private native void nativeDisableRedirects(long paramLong);
  
  private native void nativeEnableChunkedUpload(long paramLong, String paramString);
  
  private native void nativeGetAllHeaders(long paramLong, ChromiumUrlRequest.ResponseHeadersMap paramResponseHeadersMap);
  
  private native long nativeGetContentLength(long paramLong);
  
  private native String nativeGetContentType(long paramLong);
  
  private native int nativeGetErrorCode(long paramLong);
  
  private native String nativeGetErrorString(long paramLong);
  
  private native String nativeGetHeader(long paramLong, String paramString);
  
  private native int nativeGetHttpStatusCode(long paramLong);
  
  private native String nativeGetHttpStatusText(long paramLong);
  
  private native String nativeGetNegotiatedProtocol(long paramLong);
  
  private native boolean nativeGetWasCached(long paramLong);
  
  private native void nativeSetMethod(long paramLong, String paramString);
  
  private native void nativeSetUploadChannel(long paramLong1, String paramString, long paramLong2);
  
  private native void nativeSetUploadData(long paramLong, String paramString, byte[] paramArrayOfByte);
  
  private native void nativeStart(long paramLong);
  
  private void o()
  {
    x = true;
    i();
  }
  
  @CalledByNative
  private void onAppendResponseHeader(ChromiumUrlRequest.ResponseHeadersMap paramResponseHeadersMap, String paramString1, String paramString2)
  {
    try
    {
      if (!paramResponseHeadersMap.containsKey(paramString1)) {
        paramResponseHeadersMap.put(paramString1, new ArrayList());
      }
      ((List)paramResponseHeadersMap.get(paramString1)).add(paramString2);
      return;
    }
    catch (Exception paramResponseHeadersMap)
    {
      a(paramResponseHeadersMap);
    }
  }
  
  @CalledByNative
  private void onBytesRead(ByteBuffer paramByteBuffer)
  {
    int i2 = 0;
    try
    {
      if (x) {
        return;
      }
      int i3 = paramByteBuffer.remaining();
      z += i3;
      if (y)
      {
        if (z <= u) {
          return;
        }
        y = false;
        paramByteBuffer.position((int)(u - (z - i3)));
      }
      int i1 = i2;
      if (v != 0L)
      {
        i1 = i2;
        if (z > v) {
          i1 = 1;
        }
      }
      if (i1 != 0) {
        paramByteBuffer.limit(i3 - (int)(z - v));
      }
      while (paramByteBuffer.hasRemaining()) {
        f.write(paramByteBuffer);
      }
      if (i1 == 0) {
        return;
      }
    }
    catch (Exception paramByteBuffer)
    {
      a(paramByteBuffer);
      return;
    }
    o();
  }
  
  @CalledByNative
  private void onResponseStarted()
  {
    for (;;)
    {
      try
      {
        B = nativeGetHttpStatusCode(a);
        C = nativeGetHttpStatusText(a);
        D = nativeGetContentType(a);
        E = nativeGetContentLength(a);
        q = true;
        if ((v > 0L) && (E > v) && (w))
        {
          o();
          return;
        }
        if ((t) && (E != -1L) && (!x)) {
          ((ChunkedWritableByteChannel)g()).a((int)E);
        }
        if (u != 0L)
        {
          if (B == 200)
          {
            if (E != -1L) {
              E -= u;
            }
            y = true;
          }
        }
        else
        {
          s.a(this);
          return;
        }
      }
      catch (Exception localException)
      {
        a(localException);
        return;
      }
      z = u;
    }
  }
  
  private void p()
  {
    if (a == 0L) {
      throw new IllegalStateException("Adapter has been destroyed");
    }
  }
  
  private void q()
  {
    if (n) {
      throw new IllegalStateException("Request already started");
    }
  }
  
  private void r()
  {
    if (!q) {
      throw new IllegalStateException("Response headers not available");
    }
  }
  
  @CalledByNative
  private int readFromUploadChannel(ByteBuffer paramByteBuffer)
  {
    try
    {
      if ((k != null) && (k.isOpen()))
      {
        int i2 = k.read(paramByteBuffer);
        i1 = i2;
        if (i2 >= 0) {
          return i1;
        }
        k.close();
        return 0;
      }
    }
    catch (Exception paramByteBuffer)
    {
      a(paramByteBuffer);
      return -1;
    }
    int i1 = -1;
    return i1;
  }
  
  public long a()
  {
    return E;
  }
  
  public void a(long paramLong)
  {
    u = paramLong;
    if (paramLong != 0L) {
      a("Range", "bytes=" + paramLong + "-");
    }
  }
  
  public void a(long paramLong, boolean paramBoolean)
  {
    v = paramLong;
    w = paramBoolean;
  }
  
  public void a(String paramString)
  {
    q();
    i = paramString;
  }
  
  public void a(String paramString1, String paramString2)
  {
    synchronized (H)
    {
      q();
      if (g == null) {
        g = new HashMap();
      }
      g.put(paramString1, paramString2);
      return;
    }
  }
  
  public void a(String paramString, ReadableByteChannel paramReadableByteChannel, long paramLong)
  {
    synchronized (H)
    {
      q();
      b(paramString);
      h = paramString;
      k = paramReadableByteChannel;
      r = paramLong;
      j = null;
      l = false;
      return;
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte)
  {
    synchronized (H)
    {
      q();
      b(paramString);
      h = paramString;
      j = paramArrayOfByte;
      k = null;
      l = false;
      return;
    }
  }
  
  public int b()
  {
    if (B == 206) {
      return 200;
    }
    return B;
  }
  
  public String c()
  {
    return C;
  }
  
  public IOException d()
  {
    if (m != null) {
      return m;
    }
    switch (F)
    {
    default: 
      throw new IllegalStateException("Unrecognized error code: " + F);
    case 0: 
      if (x) {
        return new ResponseTooLargeException();
      }
      return null;
    case 1: 
      return new IOException(G);
    case 2: 
      return new MalformedURLException("Malformed URL: " + c);
    case 3: 
      return new SocketTimeoutException("Connection timed out");
    case 4: 
      try
      {
        String str1 = new URL(c).getHost();
        return new UnknownHostException("Unknown host: " + str1);
      }
      catch (MalformedURLException localMalformedURLException)
      {
        for (;;)
        {
          String str2 = c;
        }
      }
    }
    return new IOException("Request failed because there were too many redirects or redirects have been disabled");
  }
  
  public ByteBuffer e()
  {
    return ((ChunkedWritableByteChannel)g()).a();
  }
  
  public byte[] f()
  {
    return ((ChunkedWritableByteChannel)g()).b();
  }
  
  public WritableByteChannel g()
  {
    return f;
  }
  
  public void h()
  {
    Map.Entry localEntry;
    synchronized (H)
    {
      if (o) {
        return;
      }
      q();
      p();
      n = true;
      if ((e != null) && (!e.isEmpty()))
      {
        Iterator localIterator1 = e.entrySet().iterator();
        if (localIterator1.hasNext())
        {
          localEntry = (Map.Entry)localIterator1.next();
          nativeAddHeader(a, (String)localEntry.getKey(), (String)localEntry.getValue());
        }
      }
    }
    if (g != null)
    {
      Iterator localIterator2 = g.entrySet().iterator();
      while (localIterator2.hasNext())
      {
        localEntry = (Map.Entry)localIterator2.next();
        nativeAddHeader(a, (String)localEntry.getKey(), (String)localEntry.getValue());
      }
    }
    if ((j != null) && (j.length > 0)) {
      nativeSetUploadData(a, h, j);
    }
    for (;;)
    {
      if (i != null) {
        nativeSetMethod(a, i);
      }
      nativeStart(a);
      return;
      if (k != null) {
        nativeSetUploadChannel(a, h, r);
      } else if (l) {
        nativeEnableChunkedUpload(a, h);
      }
    }
  }
  
  public void i()
  {
    synchronized (H)
    {
      if (o) {
        return;
      }
      o = true;
      if (a != 0L) {
        nativeCancel(a);
      }
      return;
    }
  }
  
  public boolean j()
  {
    synchronized (H)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public String k()
  {
    synchronized (H)
    {
      p();
      r();
      String str = nativeGetNegotiatedProtocol(a);
      return str;
    }
  }
  
  public String l()
  {
    return D;
  }
  
  public Map<String, List<String>> m()
  {
    synchronized (H)
    {
      p();
      r();
      ChromiumUrlRequest.ResponseHeadersMap localResponseHeadersMap = new ChromiumUrlRequest.ResponseHeadersMap();
      nativeGetAllHeaders(a, localResponseHeadersMap);
      return localResponseHeadersMap;
    }
  }
  
  public String n()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     org.chromium.net.ChromiumUrlRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */