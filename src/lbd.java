import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

public abstract interface lbd
  extends ExecutorService
{
  public abstract <T> lbb<T> a(Callable<T> paramCallable);
}

/* Location:
 * Qualified Name:     lbd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */