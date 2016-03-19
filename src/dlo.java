import android.os.SystemClock;
import android.util.SparseArray;

final class dlo
  implements Runnable
{
  private boolean b;
  private long c;
  private long d;
  
  dlo(dll paramdll) {}
  
  public void a()
  {
    synchronized (a.b)
    {
      long l = SystemClock.elapsedRealtime() + 100L;
      if (l < c)
      {
        c = l;
        a.b.notifyAll();
      }
      return;
    }
  }
  
  public void b()
  {
    synchronized (a.b)
    {
      if (!b)
      {
        b = true;
        c = 0L;
        d = 0L;
        Thread localThread = new Thread(this, "presence_fetcher");
        localThread.setPriority(4);
        localThread.setDaemon(true);
        localThread.start();
      }
      return;
    }
  }
  
  public void run()
  {
    dlf localdlf = a.b;
    label245:
    label254:
    label257:
    for (;;)
    {
      int i;
      long l1;
      try
      {
        ezi.c("Babel", "Presence polling thread starting", new Object[0]);
        l2 = SystemClock.elapsedRealtime();
        if (l2 < c)
        {
          a.b.wait(c - l2);
          continue;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        long l2;
        ezi.d("Babel", "Presence polling thread interrupted", new Object[0]);
        try
        {
          return;
        }
        finally {}
        if (a.a.size() != 0)
        {
          if (l2 < d - 12000L) {
            break label254;
          }
          i = 1;
          break label245;
          l2 += 60000L;
          d = l2;
          c = l2;
          i = 0;
          if (i >= a.a.size()) {
            continue;
          }
          Object localObject1;
          ((dky)a.a.valueAt(i)).a(localObject1);
          i += 1;
          continue;
          l1 = System.currentTimeMillis();
          l1 -= 60000L;
          continue;
        }
        else
        {
          b = false;
          ezi.c("Babel", "Presence polling thread exiting", new Object[0]);
          continue;
        }
      }
      finally
      {
        b = false;
        ezi.c("Babel", "Presence polling thread exiting", new Object[0]);
      }
      for (;;)
      {
        if (i == 0) {
          break label257;
        }
        l1 = 0L;
        break;
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     dlo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */