import android.os.Process;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

final class ft<Params, Result>
  implements Callable<Result>
{
  Params[] a;
  
  ft() {}
  
  ft(fm paramfm)
  {
    this();
  }
  
  public Result call()
  {
    b.g.set(true);
    Process.setThreadPriority(10);
    return (Result)b.c(b.a());
  }
}

/* Location:
 * Qualified Name:     ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */