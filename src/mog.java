import android.util.Log;
import org.chromium.net.CronetUrlRequest;
import org.chromium.net.UrlRequest.Callback;
import org.chromium.net.UrlRequestException;

public final class mog
  implements Runnable
{
  public mog(CronetUrlRequest paramCronetUrlRequest, UrlRequestException paramUrlRequestException) {}
  
  public void run()
  {
    synchronized (b.d)
    {
      if (b.c()) {
        return;
      }
      b.a(false);
      try
      {
        b.e.a(b.f, a);
        return;
      }
      catch (Exception localException)
      {
        Log.e("ChromiumNetwork", "Exception in onError method", localException);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     mog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */