import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ajp
  implements ajf<InputStream>
{
  static final ajq a = new ajq();
  private final aot b;
  private final int c;
  private final ajq d;
  private HttpURLConnection e;
  private InputStream f;
  private volatile boolean g;
  
  public ajp(aot paramaot)
  {
    this(paramaot, a);
  }
  
  private ajp(aot paramaot, ajq paramajq)
  {
    b = paramaot;
    c = 2500;
    d = paramajq;
  }
  
  private InputStream a(URL paramURL1, int paramInt, URL paramURL2, Map<String, String> paramMap)
  {
    int i;
    for (;;)
    {
      if (paramInt >= 5) {
        throw new aiv("Too many (> 5) redirects!");
      }
      if (paramURL2 != null) {
        try
        {
          if (paramURL1.toURI().equals(paramURL2.toURI())) {
            throw new aiv("In re-direct loop");
          }
        }
        catch (URISyntaxException paramURL2) {}
      }
      e = ((HttpURLConnection)paramURL1.openConnection());
      paramURL2 = paramMap.entrySet().iterator();
      while (paramURL2.hasNext())
      {
        localObject = (Map.Entry)paramURL2.next();
        e.addRequestProperty((String)((Map.Entry)localObject).getKey(), (String)((Map.Entry)localObject).getValue());
      }
      e.setConnectTimeout(c);
      e.setReadTimeout(c);
      e.setUseCaches(false);
      e.setDoInput(true);
      e.connect();
      if (g) {
        return null;
      }
      i = e.getResponseCode();
      if (i / 100 == 2)
      {
        paramURL1 = e;
        if (TextUtils.isEmpty(paramURL1.getContentEncoding()))
        {
          paramInt = paramURL1.getContentLength();
          f = new avk(paramURL1.getInputStream(), paramInt);
          return f;
        }
        if (Log.isLoggable("HttpUrlFetcher", 3))
        {
          paramURL2 = String.valueOf(paramURL1.getContentEncoding());
          if (paramURL2.length() == 0) {
            break label274;
          }
          "Got non empty content encoding: ".concat(paramURL2);
        }
        for (;;)
        {
          f = paramURL1.getInputStream();
          break;
          label274:
          new String("Got non empty content encoding: ");
        }
      }
      if (i / 100 != 3) {
        break;
      }
      paramURL2 = e.getHeaderField("Location");
      if (TextUtils.isEmpty(paramURL2)) {
        throw new aiv("Received empty or null redirect url");
      }
      Object localObject = new URL(paramURL1, paramURL2);
      paramInt += 1;
      paramURL2 = paramURL1;
      paramURL1 = (URL)localObject;
    }
    if (i == -1) {
      throw new aiv(i);
    }
    throw new aiv(e.getResponseMessage(), i);
  }
  
  public void a()
  {
    if (f != null) {}
    try
    {
      f.close();
      if (e != null) {
        e.disconnect();
      }
      return;
    }
    catch (IOException localIOException)
    {
      for (;;) {}
    }
  }
  
  public void a(ahs paramahs, ajg<? super InputStream> paramajg)
  {
    long l = avm.a();
    try
    {
      paramahs = a(b.a(), 0, null, b.b());
      if (Log.isLoggable("HttpUrlFetcher", 2))
      {
        double d1 = avm.a(l);
        String str = String.valueOf(paramahs);
        new StringBuilder(String.valueOf(str).length() + 74).append("Finished http url fetcher fetch in ").append(d1).append(" ms and loaded ").append(str);
      }
      paramajg.a(paramahs);
      return;
    }
    catch (IOException paramahs)
    {
      paramajg.a(paramahs);
    }
  }
  
  public void b()
  {
    g = true;
  }
  
  public air c()
  {
    return air.b;
  }
  
  public Class<InputStream> d()
  {
    return InputStream.class;
  }
}

/* Location:
 * Qualified Name:     ajp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */