import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public final class lbi
  extends lam
  implements lbe
{
  final ScheduledExecutorService b;
  
  public lbi(ScheduledExecutorService paramScheduledExecutorService)
  {
    super(paramScheduledExecutorService);
    b = ((ScheduledExecutorService)fii.a(paramScheduledExecutorService));
  }
  
  public lbc<?> a(Runnable paramRunnable, long paramLong, TimeUnit paramTimeUnit)
  {
    paramRunnable = lbo.a(paramRunnable, null);
    return new lbj(paramRunnable, b.schedule(paramRunnable, paramLong, paramTimeUnit));
  }
}

/* Location:
 * Qualified Name:     lbi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */