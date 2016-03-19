import java.lang.ref.ReferenceQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;

public final class jrs
{
  final ReferenceQueue<Object> a = new ReferenceQueue();
  final Executor b;
  private final AtomicBoolean c = new AtomicBoolean(false);
  
  jrs(Executor paramExecutor)
  {
    b = paramExecutor;
  }
  
  public lbb<?> a(Object paramObject)
  {
    fii.a(paramObject);
    if (c.compareAndSet(false, true)) {
      b.execute(new jrt(this));
    }
    lbl locallbl = new lbl();
    locallbl.a(new jru(paramObject, a, locallbl), lbh.a);
    return locallbl;
  }
}

/* Location:
 * Qualified Name:     jrs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */