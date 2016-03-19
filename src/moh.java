import org.chromium.net.CronetUrlRequest;
import org.chromium.net.UrlRequest.Callback;
import org.chromium.net.UrlResponseInfo;

public final class moh
  implements Runnable
{
  public moh(CronetUrlRequest paramCronetUrlRequest, UrlResponseInfo paramUrlResponseInfo, String paramString) {}
  
  public void run()
  {
    synchronized (c.d)
    {
      if (c.c()) {
        return;
      }
      c.b = true;
      try
      {
        c.e.a(c);
        return;
      }
      catch (Exception localException)
      {
        c.a(localException);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     moh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */