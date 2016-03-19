import com.google.android.apps.hangouts.concurrent.impl.ConcurrentServiceImpl;
import java.util.concurrent.ThreadFactory;

public final class bdf
  implements ThreadFactory
{
  public bdf(ConcurrentServiceImpl paramConcurrentServiceImpl) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(new bdg(this, paramRunnable));
  }
}

/* Location:
 * Qualified Name:     bdf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */