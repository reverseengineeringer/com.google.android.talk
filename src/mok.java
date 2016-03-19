import android.util.Log;
import org.chromium.net.CronetUrlRequest;
import org.chromium.net.UrlRequest.Callback;

public final class mok
  implements Runnable
{
  public mok(CronetUrlRequest paramCronetUrlRequest) {}
  
  public void run()
  {
    try
    {
      a.e.b(a.f);
      return;
    }
    catch (Exception localException)
    {
      Log.e("ChromiumNetwork", "Exception in onCanceled method", localException);
    }
  }
}

/* Location:
 * Qualified Name:     mok
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */