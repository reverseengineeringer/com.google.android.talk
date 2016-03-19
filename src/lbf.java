import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

public final class lbf
  implements Executor
{
  volatile boolean a = true;
  
  public lbf(Executor paramExecutor, kzz paramkzz) {}
  
  public void execute(Runnable paramRunnable)
  {
    try
    {
      b.execute(new lbg(this, paramRunnable));
      return;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      while (!a) {}
      c.a(paramRunnable);
    }
  }
}

/* Location:
 * Qualified Name:     lbf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */