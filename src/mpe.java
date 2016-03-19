import android.net.TrafficStats;
import java.net.HttpURLConnection;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.chromium.net.UploadDataProvider;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlRequest.Callback;
import org.chromium.net.UrlRequestException;
import org.chromium.net.UrlResponseInfo;

final class mpe
  implements UrlRequest
{
  final mpt a;
  final Executor b;
  final String c;
  final Map<String, String> d = new TreeMap(String.CASE_INSENSITIVE_ORDER);
  final List<String> e = new ArrayList();
  final AtomicReference<mqh> f = new AtomicReference(mqh.a);
  final int g;
  String h;
  UploadDataProvider i;
  Executor j;
  volatile int k = -1;
  String l;
  ReadableByteChannel m;
  UrlResponseInfo n;
  String o;
  final AtomicReference<HttpURLConnection> p = new AtomicReference();
  
  mpe(UrlRequest.Callback paramCallback, Executor paramExecutor1, Executor paramExecutor2, String paramString1, String paramString2)
  {
    if (paramString1 == null) {
      throw new NullPointerException("URL is required");
    }
    if (paramCallback == null) {
      throw new NullPointerException("Listener is required");
    }
    if (paramExecutor1 == null) {
      throw new NullPointerException("Executor is required");
    }
    if (paramExecutor2 == null) {
      throw new NullPointerException("userExecutor is required");
    }
    a = new mpt(this, paramCallback, paramExecutor2);
    g = TrafficStats.getThreadStatsTag();
    b = new mpf(this, paramExecutor1);
    l = paramString1;
    c = paramString2;
  }
  
  private void e()
  {
    mqh localmqh = (mqh)f.get();
    if (localmqh != mqh.a) {
      throw new IllegalStateException("Request is already started. State is: " + localmqh);
    }
  }
  
  Runnable a(mqh parammqh, mpz parammpz)
  {
    return new mpr(this, parammpz, parammqh);
  }
  
  public void a()
  {
    k = 10;
    a(mqh.a, mqh.b, new mpl(this));
  }
  
  public void a(String paramString)
  {
    e();
    if (paramString == null) {
      throw new NullPointerException("Method is required.");
    }
    if (("OPTIONS".equalsIgnoreCase(paramString)) || ("GET".equalsIgnoreCase(paramString)) || ("HEAD".equalsIgnoreCase(paramString)) || ("POST".equalsIgnoreCase(paramString)) || ("PUT".equalsIgnoreCase(paramString)) || ("DELETE".equalsIgnoreCase(paramString)) || ("TRACE".equalsIgnoreCase(paramString)) || ("PATCH".equalsIgnoreCase(paramString)))
    {
      h = paramString;
      return;
    }
    throw new IllegalArgumentException("Invalid http method " + paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    int i3 = 0;
    e();
    int i1 = 0;
    if (i1 < paramString1.length())
    {
      char c1 = paramString1.charAt(i1);
      i2 = i3;
      switch (c1)
      {
      default: 
        i2 = i3;
        if (!Character.isISOControl(c1)) {
          if (!Character.isWhitespace(c1)) {
            break label245;
          }
        }
        break;
      }
    }
    for (int i2 = i3;; i2 = 1)
    {
      if ((i2 != 0) && (!paramString2.contains("\r\n"))) {
        break label260;
      }
      throw new IllegalArgumentException("Invalid header " + paramString1 + "=" + paramString2);
      label245:
      i1 += 1;
      break;
    }
    label260:
    if (d.containsKey(paramString1)) {
      d.remove(paramString1);
    }
    d.put(paramString1, paramString2);
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    aal.b(paramByteBuffer);
    aal.c(paramByteBuffer);
    a(mqh.e, mqh.f, new mpi(this, paramByteBuffer));
  }
  
  void a(mqh parammqh1, mqh parammqh2, Runnable paramRunnable)
  {
    if (!f.compareAndSet(parammqh1, parammqh2))
    {
      parammqh2 = (mqh)f.get();
      if ((parammqh2 != mqh.i) && (parammqh2 != mqh.g)) {
        throw new IllegalStateException("Invalid state transition - expected " + parammqh1 + " but was " + parammqh2);
      }
    }
    else
    {
      paramRunnable.run();
    }
  }
  
  void a(mqh parammqh, UrlRequestException paramUrlRequestException)
  {
    if (f.compareAndSet(parammqh, mqh.g))
    {
      c();
      a.a(n, paramUrlRequestException);
    }
  }
  
  public void a(UploadDataProvider paramUploadDataProvider, Executor paramExecutor)
  {
    if (paramUploadDataProvider == null) {
      throw new NullPointerException("Invalid UploadDataProvider.");
    }
    if (!d.containsKey("Content-Type")) {
      throw new IllegalArgumentException("Requests with upload data must have a Content-Type.");
    }
    e();
    if (h == null) {
      h = "POST";
    }
    i = paramUploadDataProvider;
    j = paramExecutor;
  }
  
  public void b()
  {
    a(mqh.d, mqh.b, new mpm(this));
  }
  
  void c()
  {
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)p.getAndSet(null);
    if (localHttpURLConnection != null) {
      b.execute(new mpk(this, localHttpURLConnection));
    }
  }
  
  public void d() {}
}

/* Location:
 * Qualified Name:     mpe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */