import java.util.concurrent.Executor;
import java.util.concurrent.Future;

public abstract interface lbb<V>
  extends Future<V>
{
  public abstract void a(Runnable paramRunnable, Executor paramExecutor);
}

/* Location:
 * Qualified Name:     lbb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */