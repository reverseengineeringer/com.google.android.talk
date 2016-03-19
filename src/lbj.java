import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class lbj<V>
  extends las<V>
  implements ScheduledFuture<V>, lbb<V>
{
  private final ScheduledFuture<?> a;
  
  public lbj(lbb<V> paramlbb, ScheduledFuture<?> paramScheduledFuture)
  {
    super(paramlbb);
    a = paramScheduledFuture;
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    boolean bool = super.cancel(paramBoolean);
    if (bool) {
      a.cancel(paramBoolean);
    }
    return bool;
  }
  
  public long getDelay(TimeUnit paramTimeUnit)
  {
    return a.getDelay(paramTimeUnit);
  }
}

/* Location:
 * Qualified Name:     lbj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */