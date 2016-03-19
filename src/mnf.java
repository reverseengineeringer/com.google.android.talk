import java.io.InputStream;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.message.BasicHeader;

public final class mnf
  implements HttpEntity
{
  private static final char[] a = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
  private final mna b;
  private final Header c;
  private long d;
  private volatile boolean e;
  
  public mnf()
  {
    this(mnc.a);
  }
  
  private mnf(int paramInt)
  {
    String str = a();
    int i = paramInt;
    if (paramInt == 0) {
      i = mnc.a;
    }
    b = new mna("form-data", null, str, i);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("multipart/form-data; boundary=");
    localStringBuilder.append(str);
    c = new BasicHeader("Content-Type", localStringBuilder.toString());
    e = true;
  }
  
  private static String a()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    Random localRandom = new Random();
    int j = localRandom.nextInt(11);
    int i = 0;
    while (i < j + 30)
    {
      localStringBuilder.append(a[localRandom.nextInt(a.length)]);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public void a(String paramString, mng parammng)
  {
    paramString = new mmy(paramString, parammng);
    b.a(paramString);
    e = true;
  }
  
  public void consumeContent()
  {
    if (isStreaming()) {
      throw new UnsupportedOperationException("Streaming entity does not implement #consumeContent()");
    }
  }
  
  public InputStream getContent()
  {
    throw new UnsupportedOperationException("Multipart form entity does not implement #getContent()");
  }
  
  public Header getContentEncoding()
  {
    return null;
  }
  
  public long getContentLength()
  {
    if (e)
    {
      d = b.b();
      e = false;
    }
    return d;
  }
  
  public Header getContentType()
  {
    return c;
  }
  
  public boolean isChunked()
  {
    return !isRepeatable();
  }
  
  public boolean isRepeatable()
  {
    Iterator localIterator = b.a().iterator();
    while (localIterator.hasNext()) {
      if (((mmy)localIterator.next()).a().d() < 0L) {
        return false;
      }
    }
    return true;
  }
  
  public boolean isStreaming()
  {
    return !isRepeatable();
  }
  
  public void writeTo(OutputStream paramOutputStream)
  {
    b.a(paramOutputStream);
  }
}

/* Location:
 * Qualified Name:     mnf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */