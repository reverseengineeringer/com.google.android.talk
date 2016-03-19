import com.google.api.client.http.LowLevelHttpResponse;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class iqp
  extends LowLevelHttpResponse
{
  private final HttpURLConnection a;
  private final int b;
  private final String c;
  private final ArrayList<String> d = new ArrayList();
  private final ArrayList<String> e = new ArrayList();
  
  iqp(HttpURLConnection paramHttpURLConnection)
  {
    a = paramHttpURLConnection;
    int j = paramHttpURLConnection.getResponseCode();
    int i = j;
    if (j == -1) {
      i = 0;
    }
    b = i;
    c = paramHttpURLConnection.getResponseMessage();
    ArrayList localArrayList1 = d;
    ArrayList localArrayList2 = e;
    paramHttpURLConnection = paramHttpURLConnection.getHeaderFields().entrySet().iterator();
    while (paramHttpURLConnection.hasNext())
    {
      Object localObject = (Map.Entry)paramHttpURLConnection.next();
      String str1 = (String)((Map.Entry)localObject).getKey();
      if (str1 != null)
      {
        localObject = ((List)((Map.Entry)localObject).getValue()).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str2 = (String)((Iterator)localObject).next();
          if (str2 != null)
          {
            localArrayList1.add(str1);
            localArrayList2.add(str2);
          }
        }
      }
    }
  }
  
  public void disconnect()
  {
    a.disconnect();
  }
  
  public InputStream getContent()
  {
    try
    {
      InputStream localInputStream1 = a.getInputStream();
      if (localInputStream1 == null) {
        return null;
      }
    }
    catch (IOException localIOException)
    {
      InputStream localInputStream2;
      for (;;)
      {
        localInputStream2 = a.getErrorStream();
      }
      return new iqq(this, localInputStream2);
    }
  }
  
  public String getContentEncoding()
  {
    return a.getContentEncoding();
  }
  
  public long getContentLength()
  {
    String str = a.getHeaderField("Content-Length");
    if (str == null) {
      return -1L;
    }
    return Long.parseLong(str);
  }
  
  public String getContentType()
  {
    return a.getHeaderField("Content-Type");
  }
  
  public int getHeaderCount()
  {
    return d.size();
  }
  
  public String getHeaderName(int paramInt)
  {
    return (String)d.get(paramInt);
  }
  
  public String getHeaderValue(int paramInt)
  {
    return (String)e.get(paramInt);
  }
  
  public String getReasonPhrase()
  {
    return c;
  }
  
  public int getStatusCode()
  {
    return b;
  }
  
  public String getStatusLine()
  {
    String str = a.getHeaderField(0);
    if ((str != null) && (str.startsWith("HTTP/1."))) {
      return str;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     iqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */