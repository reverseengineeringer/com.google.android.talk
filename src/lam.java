import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;

public class lam
  extends AbstractExecutorService
  implements lbd
{
  final ExecutorService a;
  
  public lam() {}
  
  public lam(ExecutorService paramExecutorService)
  {
    this();
    a = ((ExecutorService)fii.a(paramExecutorService));
  }
  
  public lbb<?> a(Runnable paramRunnable)
  {
    return (lbb)super.submit(paramRunnable);
  }
  
  public <T> lbb<T> a(Runnable paramRunnable, T paramT)
  {
    return (lbb)super.submit(paramRunnable, paramT);
  }
  
  public <T> lbb<T> a(Callable<T> paramCallable)
  {
    return (lbb)super.submit(paramCallable);
  }
  
  public boolean awaitTermination(long paramLong, TimeUnit paramTimeUnit)
  {
    return a.awaitTermination(paramLong, paramTimeUnit);
  }
  
  public void execute(Runnable paramRunnable)
  {
    a.execute(paramRunnable);
  }
  
  public boolean isShutdown()
  {
    return a.isShutdown();
  }
  
  public boolean isTerminated()
  {
    return a.isTerminated();
  }
  
  protected final <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
  {
    return lbo.a(paramRunnable, paramT);
  }
  
  protected final <T> RunnableFuture<T> newTaskFor(Callable<T> paramCallable)
  {
    return lbo.a(paramCallable);
  }
  
  public void shutdown()
  {
    a.shutdown();
  }
  
  public List<Runnable> shutdownNow()
  {
    return a.shutdownNow();
  }
}

/* Location:
 * Qualified Name:     lam
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */