import org.chromium.net.CronetUrlRequest;
import org.chromium.net.UrlRequest.Callback;

public final class moi
  implements Runnable
{
  public moi(CronetUrlRequest paramCronetUrlRequest) {}
  
  public void run()
  {
    synchronized (a.d)
    {
      if (a.c()) {
        return;
      }
      a.c = true;
      try
      {
        a.e.a(a, a.f);
        return;
      }
      catch (Exception localException)
      {
        a.a(localException);
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     moi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */