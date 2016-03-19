import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

final class lbo<V>
  extends lai<V>
  implements RunnableFuture<V>
{
  private lbp a;
  
  private lbo(Callable<V> paramCallable)
  {
    a = new lbp(this, paramCallable);
  }
  
  static <V> lbo<V> a(Runnable paramRunnable, V paramV)
  {
    return new lbo(Executors.callable(paramRunnable, paramV));
  }
  
  static <V> lbo<V> a(Callable<V> paramCallable)
  {
    return new lbo(paramCallable);
  }
  
  protected final void a()
  {
    super.a();
    a = null;
  }
  
  protected final void b()
  {
    lbp locallbp = a;
    if (locallbp != null)
    {
      Thread localThread = a;
      if (localThread != null) {
        localThread.interrupt();
      }
      b = true;
    }
  }
  
  public void run()
  {
    lbp locallbp = a;
    if (locallbp != null) {
      locallbp.run();
    }
  }
}

/* Location:
 * Qualified Name:     lbo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */