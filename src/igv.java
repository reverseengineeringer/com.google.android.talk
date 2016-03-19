import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class igv
  implements ThreadFactory
{
  private final AtomicInteger b = new AtomicInteger(0);
  
  igv(igt paramigt) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = Executors.defaultThreadFactory().newThread(paramRunnable);
    int i = b.incrementAndGet();
    paramRunnable.setName(36 + "Resource Decoder Thread #" + i);
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     igv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */