import android.content.Context;
import android.util.Log;
import java.io.IOException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import javax.net.ssl.SSLException;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlRequest.Builder;
import org.chromium.net.UrlRequest.Callback;
import org.chromium.net.UrlRequestException;
import org.chromium.net.UrlResponseInfo;

public class ihi
{
  private static final imw a = new imw("debug.rpc.metrics");
  private static final AtomicInteger b = new AtomicInteger(1);
  private static final imw c = new imw("debug.rpc.use_obscura_nonce", false);
  private static volatile String d = null;
  public static final imw f = new imw("debug.rpc.dogfood");
  private iim A;
  private CronetEngine B;
  private final String e;
  public final Context g;
  public final ihw h;
  public final int i = b.getAndIncrement();
  ihp j;
  public int k = -1;
  public String l;
  public Exception m;
  int n = 3;
  WritableByteChannel o;
  boolean p;
  public final iht q;
  String r;
  boolean s = false;
  private final String t;
  private final ihs u;
  private final List<ihh> v;
  private final String w;
  private String x;
  private UrlRequest y;
  private int z;
  
  public ihi(Context paramContext, ihw paramihw, String paramString, ihs paramihs)
  {
    this(paramContext, paramihw, paramString, paramihs, (byte)0);
  }
  
  private ihi(Context paramContext, ihw paramihw, String paramString, ihs paramihs, byte paramByte)
  {
    g = paramContext;
    h = paramihw;
    t = paramString;
    u = paramihs;
    e = null;
    w = null;
    v = ilh.c(g, ihh.class);
    A = ((iim)ilh.b(g, iim.class));
    q = new iht();
  }
  
  public void a() {}
  
  public void a(int paramInt, IOException paramIOException)
  {
    int i1;
    Object localObject;
    if ((paramInt == 200) && (paramIOException != null))
    {
      i1 = 0;
      localObject = paramIOException;
    }
    for (;;)
    {
      k = i1;
      l = null;
      m = ((Exception)localObject);
      if ((A != null) && (i1 == 0))
      {
        j();
        i();
      }
      return;
      i1 = paramInt;
      localObject = paramIOException;
      if (paramInt != 200)
      {
        i1 = paramInt;
        localObject = paramIOException;
        if (paramInt != 0)
        {
          i1 = paramInt;
          localObject = paramIOException;
          if (paramIOException == null)
          {
            localObject = new ihf(paramInt, null);
            i1 = paramInt;
          }
        }
      }
    }
  }
  
  public void a(int paramInt, Exception paramException) {}
  
  public void a(ByteBuffer paramByteBuffer)
  {
    b(paramByteBuffer, null);
  }
  
  public void a(ByteBuffer paramByteBuffer, String paramString)
  {
    b(paramByteBuffer, null);
  }
  
  public String b()
  {
    return w;
  }
  
  public void b(String paramString)
  {
    int i2 = v.size();
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2) {
        try
        {
          ihh localihh = (ihh)v.get(i1);
          if (localihh.a(i()))
          {
            i();
            localihh.c(paramString);
          }
          i1 += 1;
        }
        catch (Throwable localThrowable)
        {
          for (;;)
          {
            Log.e("HttpOperation", "Couldn't log request", localThrowable);
          }
        }
      }
    }
  }
  
  public void b(ByteBuffer paramByteBuffer, String paramString)
  {
    int i2 = v.size();
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2) {
        try
        {
          ihh localihh = (ihh)v.get(i1);
          if (localihh.b(i()))
          {
            i();
            paramByteBuffer.duplicate();
            localihh.d(paramString);
          }
          i1 += 1;
        }
        catch (Throwable localThrowable)
        {
          for (;;)
          {
            Log.e("HttpOperation", "Couldn't log response", localThrowable);
          }
        }
      }
    }
  }
  
  protected boolean b(Exception paramException)
  {
    return c(paramException);
  }
  
  public boolean c(Exception paramException)
  {
    if ((paramException instanceof ihf)) {}
    switch (((ihf)paramException).a())
    {
    default: 
      return false;
    }
    return true;
  }
  
  public byte[] c()
  {
    return null;
  }
  
  public final void g()
  {
    ((ihg)ilh.a(g, ihg.class)).a(this);
  }
  
  public boolean h()
  {
    return p;
  }
  
  public String i()
  {
    return getClass().getSimpleName();
  }
  
  public String j()
  {
    return e;
  }
  
  public String[] k()
  {
    return new String[] { i() };
  }
  
  public String l()
  {
    return null;
  }
  
  public boolean m()
  {
    return (k != 200) || (m != null);
  }
  
  void n()
  {
    Object localObject5;
    for (;;)
    {
      try
      {
        a();
        q.h();
        localObject6 = u.a(j());
        localObject1 = d;
        if (!Log.isLoggable("HttpOperation", 3)) {
          break label178;
        }
        localObject1 = new StringBuilder("HTTP headers:\n");
        localObject5 = ((Map)localObject6).entrySet().iterator();
        if (!((Iterator)localObject5).hasNext()) {
          break label178;
        }
        localObject7 = (Map.Entry)((Iterator)localObject5).next();
        if (!"Authorization".equals(((Map.Entry)localObject7).getKey())) {
          continue;
        }
        ((StringBuilder)localObject1).append("Authorization: <removed>");
      }
      catch (IOException localIOException)
      {
        Object localObject1;
        a(0, localIOException);
        p();
        return;
        localIOException.append((String)((Map.Entry)localObject7).getKey()).append(": ").append((String)((Map.Entry)localObject7).getValue());
        continue;
      }
      finally
      {
        y = null;
      }
      ((StringBuilder)localObject1).append('\n');
    }
    label178:
    Object localObject7 = new iho();
    Object localObject3;
    if (o == null)
    {
      localObject5 = new ihl();
      localObject3 = new ihk(this, (ihl)localObject5);
    }
    UrlRequest.Builder localBuilder;
    for (;;)
    {
      try
      {
        if (h())
        {
          y = null;
          return;
          localObject3 = new ihn(this, o);
          localObject5 = null;
        }
        else
        {
          if (B == null) {
            B = ((CronetEngine)ilh.a(g, CronetEngine.class));
          }
          localBuilder = new UrlRequest.Builder(j(), (UrlRequest.Callback)localObject3, (Executor)localObject7, B).a(n);
          localObject6 = ((Map)localObject6).entrySet().iterator();
          while (((Iterator)localObject6).hasNext())
          {
            Map.Entry localEntry = (Map.Entry)((Iterator)localObject6).next();
            localBuilder.a((String)localEntry.getKey(), (String)localEntry.getValue());
          }
          s = false;
        }
      }
      finally {}
    }
    q.d();
    Object localObject6 = c();
    if (localObject6 != null)
    {
      localBuilder.a("Content-Type", b());
      localBuilder.a(new ihm((byte[])localObject6), (Executor)localObject7);
      q.a(localObject6.length);
      if (r()) {
        b(l());
      }
    }
    y = localBuilder.a();
    y.a();
    while (!s) {
      ((iho)localObject7).a();
    }
    y = null;
    UrlRequestException localUrlRequestException;
    if (localObject5 == null)
    {
      localObject5 = null;
      localObject6 = b;
      localUrlRequestException = a;
      if ((localObject6 == null) || (!((UrlResponseInfo)localObject6).b().containsKey("Content-Type"))) {
        break label672;
      }
      x = ((String)((List)((UrlResponseInfo)localObject6).b().get("Content-Type")).get(0));
    }
    for (;;)
    {
      a(i1, localUrlRequestException);
      if (k == 200)
      {
        if (j != null) {
          j.c();
        }
        if ((localObject5 != null) && (q.a() < 0L)) {
          q.b(((ByteBuffer)localObject5).capacity());
        }
        a((ByteBuffer)localObject5);
        label620:
        y = null;
        return;
        localObject5 = ((ihl)localObject5).a();
        break;
      }
      label672:
      do
      {
        i1 = ((UrlResponseInfo)localObject6).a();
        break;
        if ((h()) || (k == 401)) {
          break label620;
        }
        a((ByteBuffer)localObject5, x);
        break label620;
      } while (localObject6 != null);
      int i1 = 0;
    }
  }
  
  void o()
  {
    z += 1;
    if ((b(m)) && (z < 2)) {
      try
      {
        if (c(m)) {
          u.a();
        }
        n();
        o();
        return;
      }
      catch (IOException localIOException)
      {
        a(0, localIOException);
      }
    }
    a(k, m);
  }
  
  protected void p()
  {
    Object localObject = m;
    int i1;
    if (localObject == null) {
      i1 = 1;
    }
    for (;;)
    {
      if (i1 == 0)
      {
        localObject = String.valueOf(i());
        Log.e("HttpOperation", String.valueOf(localObject).length() + 23 + "[" + (String)localObject + "] Unexpected exception", m);
      }
      return;
      if ((localObject instanceof SocketException)) {
        i1 = 1;
      } else if ((localObject instanceof UnknownHostException)) {
        i1 = 1;
      } else if ((localObject instanceof SSLException)) {
        i1 = 1;
      } else if (((localObject instanceof ihf)) && (((ihf)localObject).a() == 401)) {
        i1 = 1;
      } else {
        i1 = 0;
      }
    }
  }
  
  void q()
  {
    int i2 = v.size();
    int i1 = 0;
    for (;;)
    {
      if (i1 < i2) {
        try
        {
          ihh localihh = (ihh)v.get(i1);
          String str = h.b();
          i();
          localihh.a(str, j, k, r);
          i1 += 1;
        }
        catch (Throwable localThrowable)
        {
          for (;;)
          {
            Log.e("HttpOperation", "Couldn't save network data", localThrowable);
          }
        }
      }
    }
  }
  
  protected boolean r()
  {
    int i2 = v.size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((ihh)v.get(i1)).a(i())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public boolean s()
  {
    int i2 = v.size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (((ihh)v.get(i1)).b(i())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     ihi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */