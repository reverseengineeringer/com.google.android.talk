import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class mox
  implements ThreadFactory
{
  private final AtomicInteger a = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, "HttpUrlConnection #" + a.getAndIncrement());
    paramRunnable.setPriority(5);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     mox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */