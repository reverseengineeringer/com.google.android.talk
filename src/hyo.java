import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Map;
import org.chromium.net.ChunkedWritableByteChannel;
import org.chromium.net.HttpUrlRequest;
import org.chromium.net.HttpUrlRequestListener;

final class hyo
{
  final hya a;
  final hye b;
  long c;
  String d;
  int e = 0;
  long f;
  HttpUrlRequest g;
  ifg<ChunkedWritableByteChannel> h;
  boolean i;
  File j;
  private long k;
  private long l;
  private String m;
  private final HttpUrlRequestListener n = new hyp(this);
  
  hyo(hya paramhya, hye paramhye)
  {
    a = paramhya;
    b = paramhye;
  }
  
  private String b(String paramString, boolean paramBoolean)
  {
    try
    {
      String str = ipr.a(String.valueOf(paramString).concat("u"));
      return str;
    }
    catch (FileNotFoundException paramString)
    {
      return a.a();
    }
    catch (IOException localIOException)
    {
      a.a("Cannot obtain download URL for partial file", localIOException);
      if (paramBoolean)
      {
        j.delete();
        new File(String.valueOf(paramString).concat("u")).delete();
      }
    }
    return a.a();
  }
  
  void a(String paramString)
  {
    m = paramString;
  }
  
  boolean a()
  {
    return e <= 3;
  }
  
  boolean a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (hxm localhxm = b.c();; localhxm = b.b())
    {
      String str = localhxm.b(String.valueOf(paramString).concat("u"));
      try
      {
        ipr.a(str, m);
        return true;
      }
      catch (IOException localIOException)
      {
        a.a("Cannot save download URL", localIOException);
        new File(localhxm.b(paramString)).delete();
      }
    }
    return false;
  }
  
  void b()
  {
    boolean bool = false;
    igq localigq = (igq)a.l();
    String str = a.e();
    if ((i & 0x400) != 0) {}
    for (Object localObject1 = b.c();; localObject1 = b.b())
    {
      localObject1 = ((hxm)localObject1).b(str);
      j = new File((String)localObject1);
      if (j.exists()) {
        m = b((String)localObject1, false);
      }
      if (a.p())
      {
        localObject1 = m;
        str = String.valueOf(a.l());
        new StringBuilder(String.valueOf(localObject1).length() + 34 + String.valueOf(str).length()).append("Downloading using URL: ").append((String)localObject1).append(" resource: ").append(str);
      }
      localObject1 = j.getParentFile();
      if (!((File)localObject1).exists()) {
        ((File)localObject1).mkdirs();
      }
      try
      {
        localObject1 = new FileOutputStream(j, true).getChannel();
        if (m != null) {
          break;
        }
        localObject1 = String.valueOf(this);
        throw new NullPointerException(String.valueOf(localObject1).length() + 22 + "Download URL is null: " + (String)localObject1);
      }
      catch (IOException localIOException)
      {
        a.a("Cannot open cache file", localIOException);
        a.a(4);
        return;
      }
    }
    HttpUrlRequest localHttpUrlRequest = iff.a(b.l(), m, 0, null, localIOException, n);
    localHttpUrlRequest.a(j.length());
    if ((i & 0x2000) != 0) {}
    for (long l1 = b.g();; l1 = b.h())
    {
      if ((i & 0x800) == 0) {
        bool = true;
      }
      localHttpUrlRequest.a(l1, bool);
      try
      {
        g = localHttpUrlRequest;
        localHttpUrlRequest.h();
        return;
      }
      finally {}
    }
  }
  
  void c()
  {
    localObject1 = null;
    long l1 = b.h();
    f = 0L;
    Object localObject3 = a.e();
    j = b.b().a((String)localObject3);
    if (j != null)
    {
      m = b(j.getPath(), true);
      if (!j.exists()) {
        j = null;
      }
    }
    String str1;
    if (a.p())
    {
      str1 = m;
      String str2 = String.valueOf(a.l());
      new StringBuilder(String.valueOf(str1).length() + 34 + String.valueOf(str2).length()).append("Downloading using URL: ").append(str1).append(" resource: ").append(str2);
    }
    h = new ifg(new ChunkedWritableByteChannel(), a);
    if (j != null) {}
    try
    {
      f = j.length();
      if (a.p())
      {
        long l2 = f;
        str1 = String.valueOf(a.l());
        new StringBuilder(String.valueOf(localObject3).length() + 68 + String.valueOf(str1).length()).append("Continuing download to file ").append((String)localObject3).append(" (").append(l2).append(" bytes) resource: ").append(str1);
      }
      localObject3 = aal.a(j, true);
      h.write((ByteBuffer)localObject3);
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        try
        {
          g = ((HttpUrlRequest)localObject1);
          ((HttpUrlRequest)localObject1).h();
          return;
        }
        finally {}
        localIOException = localIOException;
        h = null;
        f = 0L;
        continue;
        localObject1 = iff.a(b.l(), m, 2, (Map)localObject1, n);
      }
    }
    localObject3 = (hxz)ilh.b(b.l(), hxz.class);
    if (localObject3 != null)
    {
      localObject3 = ((hxz)localObject3).a();
      localObject1 = localObject3;
      if (a.p())
      {
        localObject1 = localObject3;
        if (!((Map)localObject3).isEmpty())
        {
          localObject1 = String.valueOf(localObject3);
          str1 = String.valueOf(a.l());
          new StringBuilder(String.valueOf(localObject1).length() + 33 + String.valueOf(str1).length()).append("Adding image headers: ").append((String)localObject1).append(" resource: ").append(str1);
          localObject1 = localObject3;
        }
      }
    }
    if (h != null)
    {
      localObject1 = iff.a(b.l(), m, 2, (Map)localObject1, h, n);
      ((HttpUrlRequest)localObject1).a(f);
      ((HttpUrlRequest)localObject1).a(l1, true);
    }
  }
  
  File d()
  {
    if (i)
    {
      localFile = j;
      String str = j.getName();
      if ((a.l()).i & 0x400) != 0) {}
      for (boolean bool = true;; bool = false)
      {
        a(str, bool);
        return localFile;
      }
    }
    File localFile = a.f();
    j.renameTo(localFile);
    return localFile;
  }
  
  void e()
  {
    if (!a.n) {}
    for (;;)
    {
      return;
      try
      {
        HttpUrlRequest localHttpUrlRequest = g;
        if (localHttpUrlRequest == null) {
          continue;
        }
        localHttpUrlRequest.i();
        return;
      }
      finally {}
    }
  }
  
  void f()
  {
    a.n = true;
    k = System.currentTimeMillis();
    b.a(a);
  }
  
  void g()
  {
    if (!a.n) {}
    do
    {
      return;
      a.n = false;
      l = System.currentTimeMillis();
      b.b(a);
    } while (!a.p());
    String str1 = String.valueOf(a.k());
    String str2 = String.valueOf(a.l());
    new StringBuilder(String.valueOf(str1).length() + 24 + String.valueOf(str2).length()).append("Download completed in ").append(str1).append("; ").append(str2);
  }
  
  void h()
  {
    if (j != null) {
      j.delete();
    }
  }
  
  long i()
  {
    return k;
  }
  
  long j()
  {
    return f;
  }
  
  long k()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     hyo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */