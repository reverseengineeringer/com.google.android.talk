import java.util.concurrent.Executor;

public abstract class lar<V>
  extends laq<V>
  implements lbb<V>
{
  public void a(Runnable paramRunnable, Executor paramExecutor)
  {
    b().a(paramRunnable, paramExecutor);
  }
  
  protected abstract lbb<V> b();
}

/* Location:
 * Qualified Name:     lar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */