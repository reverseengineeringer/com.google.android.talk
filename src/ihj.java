import java.nio.ByteBuffer;
import java.util.List;
import java.util.Map;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlRequest.Callback;
import org.chromium.net.UrlRequestException;
import org.chromium.net.UrlResponseInfo;

abstract class ihj
  extends UrlRequest.Callback
{
  UrlRequestException a;
  UrlResponseInfo b;
  
  ihj(ihi paramihi) {}
  
  public void a(UrlRequest paramUrlRequest)
  {
    paramUrlRequest.b();
  }
  
  public void a(UrlRequest paramUrlRequest, UrlResponseInfo paramUrlResponseInfo)
  {
    ihi localihi = c;
    Map localMap = paramUrlResponseInfo.b();
    if (o == null)
    {
      String str = null;
      if (localMap.containsKey("Content-Length")) {
        str = (String)((List)localMap.get("Content-Length")).get(0);
      }
      if (str != null) {
        q.b(Long.parseLong(str));
      }
    }
    r = paramUrlResponseInfo.c();
    if (j != null)
    {
      j.a();
      q.a(r);
    }
    paramUrlRequest.a(ByteBuffer.allocateDirect(8192));
  }
  
  public void a(UrlResponseInfo paramUrlResponseInfo)
  {
    b = paramUrlResponseInfo;
    c.s = true;
  }
  
  public void a(UrlResponseInfo paramUrlResponseInfo, UrlRequestException paramUrlRequestException)
  {
    a = paramUrlRequestException;
    b = paramUrlResponseInfo;
    c.s = true;
  }
  
  public void b(UrlResponseInfo paramUrlResponseInfo)
  {
    b = paramUrlResponseInfo;
    c.p = true;
    c.s = true;
  }
}

/* Location:
 * Qualified Name:     ihj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */