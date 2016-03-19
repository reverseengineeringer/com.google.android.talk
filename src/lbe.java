import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public abstract interface lbe
  extends ScheduledExecutorService, lbd
{
  public abstract lbc<?> a(Runnable paramRunnable, long paramLong, TimeUnit paramTimeUnit);
}

/* Location:
 * Qualified Name:     lbe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */