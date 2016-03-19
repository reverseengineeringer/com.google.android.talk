import android.os.AsyncTask;
import android.os.Build.VERSION;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;

final class ifb
{
  final ifa a;
  volatile boolean b = false;
  volatile long c;
  final AtomicLong d = new AtomicLong(0L);
  final Runnable e = new ifc(this);
  private final Executor f;
  
  ifb(ifa paramifa)
  {
    this(a(), paramifa, 0L);
  }
  
  ifb(ifa paramifa, long paramLong)
  {
    this(a(), paramifa, paramLong);
  }
  
  private ifb(Executor paramExecutor, ifa paramifa, long paramLong)
  {
    f = paramExecutor;
    a = paramifa;
    c = paramLong;
  }
  
  private static Executor a()
  {
    if (Build.VERSION.SDK_INT >= 11) {
      return AsyncTask.THREAD_POOL_EXECUTOR;
    }
    return null;
  }
  
  void a(long paramLong)
  {
    c = paramLong;
  }
  
  void b(long paramLong)
  {
    d.getAndAdd(paramLong);
    if ((d.get() == c) || (!b))
    {
      b = true;
      if (f != null) {
        f.execute(e);
      }
    }
    else
    {
      return;
    }
    new ifd(this).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     ifb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */