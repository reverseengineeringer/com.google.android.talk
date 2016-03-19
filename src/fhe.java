import android.content.Context;
import android.util.Log;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.api.Status;
import java.util.ArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

public final class fhe
  implements fgv
{
  public static final fhm a = new fhm();
  private static final Object b = new Object();
  private static ScheduledExecutorService c;
  private static final long d = TimeUnit.MILLISECONDS.convert(2L, TimeUnit.MINUTES);
  private final fmr e;
  private final fhk f;
  private final Object g = new Object();
  private long h = 0L;
  private final long i;
  private ScheduledFuture<?> j = null;
  private fic k = null;
  private final Runnable l = new fhf(this);
  
  public fhe()
  {
    this(new fmt(), d, new fhk());
  }
  
  private fhe(fmr paramfmr, long paramLong, fhk paramfhk)
  {
    e = paramfmr;
    i = paramLong;
    f = paramfhk;
  }
  
  private fij<Status> a(fic paramfic, fir paramfir)
  {
    a().execute(new fhg(this, paramfic, paramfir));
    return paramfir;
  }
  
  static ScheduledExecutorService a()
  {
    synchronized (b)
    {
      if (c == null) {
        c = Executors.newSingleThreadScheduledExecutor();
      }
      return c;
    }
  }
  
  private static void b(LogEventParcelable paramLogEventParcelable)
  {
    if ((f != null) && (e.i.length == 0)) {
      e.i = f.e();
    }
    if ((g != null) && (e.r.length == 0)) {
      e.r = g.e();
    }
    c = gbn.a(e);
  }
  
  private fhl c(fic arg1, LogEventParcelable paramLogEventParcelable)
  {
    a.a();
    paramLogEventParcelable = new fhl(this, paramLogEventParcelable, ???);
    Object localObject = new fik(this);
    if (!g) {}
    for (boolean bool = true;; bool = false)
    {
      aal.a(bool, "Result has already been consumed.");
      synchronized (c)
      {
        if (paramLogEventParcelable.b())
        {
          localObject = f;
          a.b();
          return paramLogEventParcelable;
        }
        e.add(localObject);
      }
    }
  }
  
  public fij<Status> a(Context paramContext, LogEventParcelable paramLogEventParcelable)
  {
    synchronized (g)
    {
      if (k == null)
      {
        k = new fid(paramContext).a(fgr.c).b();
        k.b();
      }
      h = (e.b() + i);
      if (j != null) {
        j.cancel(false);
      }
      j = a().schedule(l, i, TimeUnit.MILLISECONDS);
      paramContext = b(k, paramLogEventParcelable);
      return paramContext;
    }
  }
  
  public fij<Status> a(fic paramfic, LogEventParcelable paramLogEventParcelable)
  {
    b(paramLogEventParcelable);
    return paramfic.a(c(paramfic, paramLogEventParcelable));
  }
  
  public void a(fic paramfic)
  {
    fhh localfhh = new fhh(this, paramfic, paramfic);
    synchronized (b)
    {
      if (c == null)
      {
        paramfic.a(localfhh);
        return;
      }
      c.execute(new fhj(this, paramfic, localfhh));
    }
  }
  
  public boolean a(long paramLong, TimeUnit paramTimeUnit)
  {
    try
    {
      boolean bool = a.a(paramLong, paramTimeUnit);
      return bool;
    }
    catch (InterruptedException paramTimeUnit)
    {
      Log.e("ClearcutLoggerApiImpl", "flush interrupted");
      Thread.currentThread().interrupt();
    }
    return false;
  }
  
  public fij<Status> b(fic paramfic, LogEventParcelable paramLogEventParcelable)
  {
    return a(paramfic, c(paramfic, paramLogEventParcelable));
  }
}

/* Location:
 * Qualified Name:     fhe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */