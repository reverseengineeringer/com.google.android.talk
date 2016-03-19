import org.chromium.net.CronetUploadDataStream;
import org.chromium.net.UploadDataProvider;

public final class moe
  implements Runnable
{
  public moe(CronetUploadDataStream paramCronetUploadDataStream) {}
  
  public void run()
  {
    synchronized (a.c)
    {
      if (a.d == 0L) {
        return;
      }
      if (a.e) {
        throw new IllegalStateException("Unexpected readData call. Already reading.");
      }
    }
    if (a.f) {
      throw new IllegalStateException("Unexpected readData call. Already rewinding.");
    }
    if (a.b == null) {
      throw new IllegalStateException("Unexpected readData call. Buffer is null");
    }
    a.e = true;
    try
    {
      a.a.a(a, a.b);
      return;
    }
    catch (Exception localException)
    {
      a.a(localException);
    }
  }
}

/* Location:
 * Qualified Name:     moe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */