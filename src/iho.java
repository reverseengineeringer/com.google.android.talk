import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

final class iho
  implements Executor
{
  private final BlockingQueue<Runnable> a = new LinkedBlockingQueue();
  
  void a()
  {
    int i = 0;
    try
    {
      Object localObject1 = (Runnable)a.poll(Long.MAX_VALUE, TimeUnit.HOURS);
      Runnable localRunnable;
      do
      {
        ((Runnable)localObject1).run();
        localRunnable = (Runnable)a.poll();
        localObject1 = localRunnable;
      } while (localRunnable != null);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        i = 1;
      }
    }
    finally
    {
      if (i != 0) {
        Thread.currentThread().interrupt();
      }
    }
  }
  
  public void execute(Runnable paramRunnable)
  {
    a.add(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     iho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */