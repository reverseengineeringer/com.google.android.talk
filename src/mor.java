import java.util.Iterator;
import org.chromium.net.CronetUrlRequest;
import org.chromium.net.CronetUrlRequestContext;

public final class mor
  implements Runnable
{
  public mor(CronetUrlRequestContext paramCronetUrlRequestContext, CronetUrlRequest paramCronetUrlRequest) {}
  
  public void run()
  {
    synchronized (b.c)
    {
      a.e();
      Iterator localIterator = b.f.iterator();
      if (localIterator.hasNext()) {
        localIterator.next();
      }
    }
  }
}

/* Location:
 * Qualified Name:     mor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */