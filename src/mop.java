import java.util.Iterator;
import org.chromium.net.CronetUrlRequestContext;

public final class mop
  implements Runnable
{
  public mop(CronetUrlRequestContext paramCronetUrlRequestContext, int paramInt1, long paramLong, int paramInt2) {}
  
  public void run()
  {
    synchronized (d.c)
    {
      Iterator localIterator = d.d.iterator();
      if (localIterator.hasNext()) {
        localIterator.next();
      }
    }
  }
}

/* Location:
 * Qualified Name:     mop
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */