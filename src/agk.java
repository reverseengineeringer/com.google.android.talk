import android.os.Process;
import java.util.concurrent.BlockingQueue;

public final class agk
  extends Thread
{
  private static final boolean b = ahb.b;
  final BlockingQueue<agr<?>> a;
  private final BlockingQueue<agr<?>> c;
  private final agi d;
  private final agy e;
  private volatile boolean f = false;
  
  public agk(BlockingQueue<agr<?>> paramBlockingQueue1, BlockingQueue<agr<?>> paramBlockingQueue2, agi paramagi, agy paramagy)
  {
    c = paramBlockingQueue1;
    a = paramBlockingQueue2;
    d = paramagi;
    e = paramagy;
  }
  
  public void a()
  {
    f = true;
    interrupt();
  }
  
  public void run()
  {
    if (b) {
      ahb.a("start new dispatcher", new Object[0]);
    }
    Process.setThreadPriority(10);
    d.a();
    for (;;)
    {
      try
      {
        agr localagr = (agr)c.take();
        localagr.a("cache-queue-take");
        if (!localagr.f()) {
          break label73;
        }
        localagr.b("cache-discard-canceled");
        continue;
        if (!f) {
          continue;
        }
      }
      catch (InterruptedException localInterruptedException) {}
      return;
      label73:
      agj localagj = d.a(localInterruptedException.d());
      if (localagj == null)
      {
        localInterruptedException.a("cache-miss");
        a.put(localInterruptedException);
      }
      else if (localagj.a())
      {
        localInterruptedException.a("cache-hit-expired");
        localInterruptedException.a(localagj);
        a.put(localInterruptedException);
      }
      else
      {
        localInterruptedException.a("cache-hit");
        agv localagv = localInterruptedException.a(new agq(a, g));
        localInterruptedException.a("cache-hit-parsed");
        if (!localagj.b())
        {
          e.a(localInterruptedException, localagv);
        }
        else
        {
          localInterruptedException.a("cache-hit-refresh-needed");
          localInterruptedException.a(localagj);
          d = true;
          e.a(localInterruptedException, localagv, new agl(this, localInterruptedException));
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     agk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */