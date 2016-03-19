import java.util.Iterator;
import org.chromium.net.CronetUrlRequestContext;

public final class moq
  implements Runnable
{
  public moq(CronetUrlRequestContext paramCronetUrlRequestContext, int paramInt1, long paramLong, int paramInt2) {}
  
  public void run()
  {
    synchronized (d.c)
    {
      Iterator localIterator = d.e.iterator();
      if (localIterator.hasNext()) {
        localIterator.next();
      }
    }
  }
}

/* Location:
 * Qualified Name:     moq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */