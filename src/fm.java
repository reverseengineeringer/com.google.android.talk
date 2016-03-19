import android.os.Handler;
import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class fm<Params, Progress, Result>
{
  private static final ThreadFactory a = new fn();
  private static final BlockingQueue<Runnable> b = new LinkedBlockingQueue(10);
  public static final Executor c;
  private static fr h;
  private static volatile Executor i;
  final ft<Params, Result> d = new ft(this);
  final FutureTask<Result> e = new fo(this, d);
  volatile int f = fs.a;
  final AtomicBoolean g = new AtomicBoolean();
  
  static
  {
    ThreadPoolExecutor localThreadPoolExecutor = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, b, a);
    c = localThreadPoolExecutor;
    i = localThreadPoolExecutor;
  }
  
  private static Handler c()
  {
    try
    {
      if (h == null) {
        h = new fr();
      }
      fr localfr = h;
      return localfr;
    }
    finally {}
  }
  
  protected abstract Result a();
  
  protected void a(Result paramResult) {}
  
  protected void b() {}
  
  protected void b(Result paramResult) {}
  
  Result c(Result paramResult)
  {
    c().obtainMessage(1, new fq(this, new Object[] { paramResult })).sendToTarget();
    return paramResult;
  }
}

/* Location:
 * Qualified Name:     fm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */