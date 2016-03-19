import android.app.Application;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;

final class hlx
{
  ScheduledFuture<?> a;
  ScheduledFuture<?> b;
  ScheduledExecutorService c = hms.a;
  private final AtomicBoolean d = new AtomicBoolean(false);
  private final hme<Integer> e;
  private final Application f;
  private hlq g;
  
  hlx(hme<Integer> paramhme, Application paramApplication)
  {
    this(paramhme, paramApplication, hms.a);
  }
  
  private hlx(hme<Integer> paramhme, Application paramApplication, ScheduledExecutorService paramScheduledExecutorService)
  {
    f = paramApplication;
    e = paramhme;
    c = paramScheduledExecutorService;
  }
  
  public void a()
  {
    if (d.getAndSet(true)) {
      return;
    }
    g = new hlq(f, new hlr(this), new hls(this));
    g.a();
  }
  
  public void a(Integer paramInteger)
  {
    e.a(paramInteger);
  }
}

/* Location:
 * Qualified Name:     hlx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */