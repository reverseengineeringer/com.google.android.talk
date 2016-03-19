import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;

abstract class lax<V>
  implements lbb<V>
{
  private static final Logger a = Logger.getLogger(lax.class.getName());
  
  public void a(Runnable paramRunnable, Executor paramExecutor)
  {
    fii.a(paramRunnable, "Runnable was null.");
    fii.a(paramExecutor, "Executor was null.");
    try
    {
      paramExecutor.execute(paramRunnable);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      Logger localLogger = a;
      Level localLevel = Level.SEVERE;
      paramRunnable = String.valueOf(paramRunnable);
      paramExecutor = String.valueOf(paramExecutor);
      localLogger.log(localLevel, String.valueOf(paramRunnable).length() + 57 + String.valueOf(paramExecutor).length() + "RuntimeException while executing runnable " + paramRunnable + " with executor " + paramExecutor, localRuntimeException);
    }
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    return false;
  }
  
  public abstract V get();
  
  public V get(long paramLong, TimeUnit paramTimeUnit)
  {
    fii.a(paramTimeUnit);
    return (V)get();
  }
  
  public boolean isCancelled()
  {
    return false;
  }
  
  public boolean isDone()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     lax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */