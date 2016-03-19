import com.google.common.cache.LocalCache;
import java.util.logging.Level;
import java.util.logging.Logger;

final class kpg
  implements Runnable
{
  kpg(kpf paramkpf, Object paramObject, int paramInt, kpc paramkpc, lbb paramlbb) {}
  
  public void run()
  {
    try
    {
      e.a(a, b, c, d);
      return;
    }
    catch (Throwable localThrowable)
    {
      LocalCache.a.log(Level.WARNING, "Exception thrown during refresh", localThrowable);
      c.a(localThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     kpg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */