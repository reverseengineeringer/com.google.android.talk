import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class exy
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable)
  {
    int i = a.getAndIncrement();
    return new Thread(paramRunnable, 22 + "AsyncTask #" + i);
  }
}

/* Location:
 * Qualified Name:     exy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */