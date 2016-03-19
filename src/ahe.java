import android.os.SystemClock;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;

public final class ahe
  implements ago
{
  public static final boolean a = ahb.b;
  private static int d = 3000;
  private static int e = 4096;
  public final ahi b;
  public final ahf c;
  
  public ahe(ahi paramahi)
  {
    this(paramahi, new ahf(e));
  }
  
  private ahe(ahi paramahi, ahf paramahf)
  {
    b = paramahi;
    c = paramahf;
  }
  
  private static Map<String, String> a(Header[] paramArrayOfHeader)
  {
    TreeMap localTreeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    int i = 0;
    while (i < paramArrayOfHeader.length)
    {
      localTreeMap.put(paramArrayOfHeader[i].getName(), paramArrayOfHeader[i].getValue());
      i += 1;
    }
    return localTreeMap;
  }
  
  private static void a(String paramString, agr<?> paramagr, aha paramaha)
  {
    agz localagz = paramagr.m();
    int i = d.a();
    try
    {
      localagz.a(paramaha);
      paramagr.a(String.format("%s-retry [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      return;
    }
    catch (aha paramaha)
    {
      paramagr.a(String.format("%s-timeout-giveup [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      throw paramaha;
    }
  }
  
  private byte[] a(HttpEntity paramHttpEntity)
  {
    ahj localahj = new ahj(c, (int)paramHttpEntity.getContentLength());
    Object localObject2 = null;
    Object localObject1 = localObject2;
    Object localObject4;
    try
    {
      localObject4 = paramHttpEntity.getContent();
      if (localObject4 == null)
      {
        localObject1 = localObject2;
        throw new aha('\000');
      }
    }
    finally {}
    try
    {
      paramHttpEntity.consumeContent();
      c.a((byte[])localObject1);
      localahj.close();
      throw ((Throwable)localObject3);
      localObject1 = localObject3;
      byte[] arrayOfByte = c.a(1024);
      for (;;)
      {
        localObject1 = arrayOfByte;
        int i = ((InputStream)localObject4).read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localObject1 = arrayOfByte;
        localahj.write(arrayOfByte, 0, i);
      }
      localObject1 = arrayOfByte;
      localObject4 = localahj.toByteArray();
      try
      {
        paramHttpEntity.consumeContent();
        c.a(arrayOfByte);
        localahj.close();
        return (byte[])localObject4;
      }
      catch (IOException paramHttpEntity)
      {
        for (;;)
        {
          ahb.a("Error occured when calling consumingContent", new Object[0]);
        }
      }
    }
    catch (IOException paramHttpEntity)
    {
      for (;;)
      {
        ahb.a("Error occured when calling consumingContent", new Object[0]);
      }
    }
  }
  
  public agq a(agr<?> paramagr)
  {
    long l1 = SystemClock.elapsedRealtime();
    for (;;)
    {
      Map localMap = null;
      localObject6 = Collections.emptyMap();
      try
      {
        Object localObject1 = new HashMap();
        Object localObject4 = paramagr.e();
        if (localObject4 != null)
        {
          if (b != null) {
            ((Map)localObject1).put("If-None-Match", b);
          }
          if (d > 0L) {
            ((Map)localObject1).put("If-Modified-Since", DateUtils.formatDate(new Date(d)));
          }
        }
        localObject4 = b.a(paramagr, (Map)localObject1);
        localObject1 = localObject6;
        for (;;)
        {
          int i;
          Object localObject3;
          Object localObject5;
          try
          {
            localStatusLine = ((HttpResponse)localObject4).getStatusLine();
            localObject1 = localObject6;
            i = localStatusLine.getStatusCode();
            localObject1 = localObject6;
            localMap = a(((HttpResponse)localObject4).getAllHeaders());
            if (i == 304)
            {
              localObject1 = localMap;
              localObject6 = paramagr.e();
              if (localObject6 == null)
              {
                localObject1 = localMap;
                return new agq(304, null, localMap, true, SystemClock.elapsedRealtime() - l1);
              }
              localObject1 = localMap;
              g.putAll(localMap);
              localObject1 = localMap;
              return new agq(304, a, g, true, SystemClock.elapsedRealtime() - l1);
            }
            localObject1 = localMap;
            if (((HttpResponse)localObject4).getEntity() != null)
            {
              localObject1 = localMap;
              localObject6 = a(((HttpResponse)localObject4).getEntity());
              localObject1 = localObject6;
            }
          }
          catch (IOException localIOException3)
          {
            long l2;
            Object localObject2;
            StatusLine localStatusLine = null;
            localObject6 = localIOException1;
            localObject5 = localIOException3;
            continue;
          }
          try
          {
            l2 = SystemClock.elapsedRealtime() - l1;
            if ((!a) && (l2 <= d)) {
              break label671;
            }
            if (localObject1 == null) {
              continue;
            }
            localObject6 = Integer.valueOf(localObject1.length);
            ahb.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", new Object[] { paramagr, Long.valueOf(l2), localObject6, Integer.valueOf(localStatusLine.getStatusCode()), Integer.valueOf(paramagr.m().b()) });
          }
          catch (IOException localIOException2)
          {
            localObject6 = localObject5;
            localObject5 = localIOException2;
            Object localObject7 = localObject3;
            localObject3 = localIOException3;
            continue;
            if (i < 200) {
              continue;
            }
            if (i <= 299) {
              continue;
            }
          }
        }
        throw new IOException();
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        for (;;)
        {
          a("socket", paramagr, new aha((short)0));
          break;
          localObject2 = localMap;
          localObject6 = new byte[0];
          localObject2 = localObject6;
          continue;
          localObject6 = "null";
        }
        localObject6 = new agq(i, (byte[])localObject2, localMap, false, SystemClock.elapsedRealtime() - l1);
        return (agq)localObject6;
      }
      catch (ConnectTimeoutException localConnectTimeoutException)
      {
        a("connection", paramagr, new aha((short)0));
      }
      catch (MalformedURLException localMalformedURLException)
      {
        throw new RuntimeException("Bad URL " + paramagr.c(), localMalformedURLException);
      }
      catch (IOException localIOException1)
      {
        localStatusLine = null;
        localObject3 = localObject6;
        localObject6 = localMap;
        if (localObject6 != null)
        {
          i = ((HttpResponse)localObject6).getStatusLine().getStatusCode();
          ahb.c("Unexpected response code %d for %s", new Object[] { Integer.valueOf(i), paramagr.c() });
          if (localStatusLine == null) {
            break label625;
          }
          localObject3 = new agq(i, localStatusLine, (Map)localObject3, false, SystemClock.elapsedRealtime() - l1);
          if ((i == 401) || (i == 403)) {
            a("auth", paramagr, new agh((agq)localObject3));
          }
        }
        else
        {
          throw new aha(localIOException1, '\000');
        }
      }
    }
    throw new aha((agq)localObject3, (byte)0);
    label625:
    throw new aha((byte)0);
  }
}

/* Location:
 * Qualified Name:     ahe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */