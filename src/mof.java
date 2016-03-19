import org.chromium.net.CronetUploadDataStream;
import org.chromium.net.UploadDataProvider;

public final class mof
  implements Runnable
{
  public mof(CronetUploadDataStream paramCronetUploadDataStream) {}
  
  public void run()
  {
    synchronized (a.c)
    {
      if (a.d == 0L) {
        return;
      }
      if (a.e) {
        throw new IllegalStateException("Unexpected rewind call. Already reading");
      }
    }
    if (a.f) {
      throw new IllegalStateException("Unexpected rewind call. Already rewinding");
    }
    a.f = true;
    try
    {
      a.a.a(a);
      return;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     mof
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */