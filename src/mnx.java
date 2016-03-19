import android.os.Looper;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import android.os.SystemClock;
import android.util.Log;
import org.chromium.base.TraceEvent;

public final class mnx
  extends mnw
  implements MessageQueue.IdleHandler
{
  private long a = 0L;
  private long b = 0L;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private boolean f = false;
  
  private final void a()
  {
    if ((TraceEvent.a) && (!f))
    {
      a = SystemClock.elapsedRealtime();
      Looper.myQueue().addIdleHandler(this);
      f = true;
    }
    while ((!f) || (TraceEvent.a)) {
      return;
    }
    Looper.myQueue().removeIdleHandler(this);
    f = false;
  }
  
  private static void a(int paramInt, String paramString)
  {
    TraceEvent.a("TraceEvent.LooperMonitor:IdleStats", paramString);
    Log.println(paramInt, "TraceEvent.LooperMonitor", paramString);
  }
  
  final void a(String paramString)
  {
    if (e == 0) {
      TraceEvent.a("Looper.queueIdle");
    }
    b = SystemClock.elapsedRealtime();
    a();
    super.a(paramString);
  }
  
  final void b(String paramString)
  {
    long l = SystemClock.elapsedRealtime() - b;
    if (l > 16L) {
      a(5, "observed a task that took " + l + "ms: " + paramString);
    }
    super.b(paramString);
    a();
    c += 1;
    e += 1;
  }
  
  public final boolean queueIdle()
  {
    long l1 = SystemClock.elapsedRealtime();
    if (a == 0L) {
      a = l1;
    }
    long l2 = l1 - a;
    d += 1;
    TraceEvent.b("Looper.queueIdle", e + " tasks since last idle.");
    if (l2 > 48L) {
      a(3, c + " tasks and " + d + " idles processed so far, " + e + " tasks bursted and " + l2 + "ms elapsed since last idle");
    }
    a = l1;
    e = 0;
    return true;
  }
}

/* Location:
 * Qualified Name:     mnx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */