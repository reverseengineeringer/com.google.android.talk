import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class hui
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable)
  {
    int i = a.getAndIncrement();
    paramRunnable = new Thread(paramRunnable, 27 + "BackgroundTask #" + i);
    paramRunnable.setPriority(1);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     hui
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */