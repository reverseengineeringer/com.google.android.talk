import android.util.Log;
import org.chromium.net.CronetUrlRequest;
import org.chromium.net.UrlRequest.Callback;

public final class moj
  implements Runnable
{
  public moj(CronetUrlRequest paramCronetUrlRequest) {}
  
  public void run()
  {
    synchronized (a.d)
    {
      if (a.c()) {
        return;
      }
      a.a(false);
      try
      {
        a.e.a(a.f);
        return;
      }
      catch (Exception localException)
      {
        Log.e("ChromiumNetwork", "Exception in onComplete method", localException);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     moj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */