import android.os.SystemClock;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public final class cvy
  implements cwd
{
  static final boolean a = false;
  final String b;
  final LinkedList<cwf> c = new LinkedList();
  cwf d;
  final cwe e;
  Future f;
  private boolean g;
  private boolean h;
  private long i = 500L;
  private long j;
  private final cwm k;
  private final Object l = new Object();
  private final lbe m;
  
  static
  {
    imx localimx = ezi.j;
  }
  
  public cvy(String paramString, cwe paramcwe)
  {
    this(paramString, paramcwe, (byte)0);
  }
  
  private cvy(String paramString, cwe paramcwe, byte paramByte)
  {
    b = paramString;
    e = paramcwe;
    k = paramcwe.c();
    m = aal.a(Executors.newSingleThreadScheduledExecutor(new lbm().a(String.valueOf(paramString).length() + 6 + "fq-" + paramString + "-%d").b()));
  }
  
  private void b(cwf paramcwf)
  {
    synchronized (l)
    {
      if (a)
      {
        String str = String.valueOf(paramcwf);
        int n = c.size();
        new StringBuilder(String.valueOf(str).length() + 40).append("Removing request:").append(str).append(" queue_size:").append(n);
      }
      c.remove(paramcwf);
      k.a(a.a);
      if (paramcwf == d) {
        d = null;
      }
      return;
    }
  }
  
  private boolean c(cwf paramcwf)
  {
    for (;;)
    {
      int n;
      synchronized (l)
      {
        Object localObject2 = new ArrayList();
        n = 0;
        int i1 = 0;
        Object localObject3;
        if (n < c.size())
        {
          localObject3 = (cwf)c.get(n);
          if ((paramcwf == localObject3) || (a.c != a.c)) {
            break label300;
          }
          if (a.a == a.a)
          {
            long l1 = a.a;
            ezi.a("Babel_FutureNQ", 75 + "Insertion of " + l1 + " ignored since it is already in the queue.", new Object[0]);
            return false;
          }
          cwi localcwi1 = paramcwf.a();
          cwi localcwi2 = ((cwf)localObject3).a();
          if ((localcwi1.getClass() != localcwi2.getClass()) || (d == localObject3) || (!localcwi1.a(localcwi2))) {
            break label300;
          }
          ((List)localObject2).add(localObject3);
          i1 = n;
          break label303;
        }
        c.add(i1, paramcwf);
        paramcwf = ((List)localObject2).iterator();
        if (paramcwf.hasNext())
        {
          localObject2 = (cwf)paramcwf.next();
          if (a)
          {
            localObject3 = String.valueOf(localObject2);
            new StringBuilder(String.valueOf(localObject3).length() + 29).append("not sending replaced request ").append((String)localObject3);
          }
          b((cwf)localObject2);
        }
      }
      return true;
      label300:
      label303:
      n += 1;
    }
  }
  
  private void f()
  {
    synchronized (l)
    {
      if (d != null) {
        return;
      }
      cwf localcwf = h();
      if (localcwf == null) {
        return;
      }
    }
    if (!e.H_()) {
      return;
    }
    cwl localcwl = new cwl();
    lau.a(((cwf)localObject2).a(e, localcwl, m), new cvz(this), m);
  }
  
  private void g()
  {
    long l1;
    int n;
    Object localObject1;
    long l2;
    synchronized (l)
    {
      if (g) {
        return;
      }
      l1 = i;
      long l3 = System.currentTimeMillis();
      n = c.size() - 1;
      if (n >= 0)
      {
        localObject1 = (cwf)c.get(n);
        l2 = ((cwf)localObject1).f();
        if (l2 <= 0L)
        {
          if (d != localObject1)
          {
            ((cwf)localObject1).a(dvn.a);
            if (a)
            {
              ??? = String.valueOf(localObject1);
              new StringBuilder(String.valueOf(???).length() + 38).append("pausing queue: remove expired request:").append((String)???);
            }
            b((cwf)localObject1);
            break label408;
          }
        }
        else
        {
          l1 = Math.min(l1, l2);
          break label408;
        }
      }
      else
      {
        l2 = l1;
        if (c.size() > 0)
        {
          long l4 = ((cwf)c.get(0)).g();
          l2 = l1;
          if (l4 > 0L) {
            l2 = Math.max(l4 - l3, l1);
          }
        }
        h = true;
      }
    }
    for (;;)
    {
      synchronized (l)
      {
        if (a)
        {
          if (l2 == Long.MAX_VALUE)
          {
            localObject1 = "FOREVER";
            String str2 = b;
            n = c.size();
            new StringBuilder(String.valueOf(str2).length() + 38 + String.valueOf(localObject1).length()).append("pausing queue ").append(str2).append("[").append(n).append("]; duration ").append((String)localObject1);
          }
        }
        else
        {
          if (!g) {
            break label415;
          }
          return;
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
        String str1 = String.valueOf(l2);
        continue;
        label339:
        j = l1;
        if (l2 != Long.MAX_VALUE) {
          f = m.a(new cwa(this), l2, TimeUnit.MILLISECONDS);
        }
      }
      label408:
      label415:
      while (l2 != Long.MAX_VALUE)
      {
        l1 = SystemClock.elapsedRealtime();
        l1 += l2;
        break label339;
        n -= 1;
        break;
      }
      l1 = Long.MAX_VALUE;
    }
  }
  
  private cwf h()
  {
    synchronized (l)
    {
      if ((!g) && (c.size() > 0))
      {
        d = ((cwf)c.getLast());
        cwf localcwf = d;
        return localcwf;
      }
      return null;
    }
  }
  
  public void a()
  {
    a(false);
  }
  
  public void a(long paramLong)
  {
    i = paramLong;
  }
  
  void a(cwf paramcwf)
  {
    int i1 = 0;
    int n = 0;
    for (;;)
    {
      Object localObject2;
      Object localObject3;
      synchronized (l)
      {
        int i2 = paramcwf.b();
        localObject2 = paramcwf.c();
        if (i2 == cwj.b)
        {
          e.a(500L);
          i = 500L;
          if (a)
          {
            localObject2 = String.valueOf(paramcwf);
            new StringBuilder(String.valueOf(localObject2).length() + 41).append("request successful. removing from queue: ").append((String)localObject2);
          }
          b(paramcwf);
          e.a(true);
          e.I_();
          if (n == 0) {
            break label413;
          }
          g();
          return;
        }
        e.a(false);
        localObject3 = paramcwf.d();
        if (localObject3 != null) {
          RealTimeChatService.c((String)localObject3);
        }
        if ((localObject3 == null) && (paramcwf.a((cwl)localObject2)))
        {
          n = 1;
          if (n != 0) {
            break label273;
          }
          localObject3 = ((cwl)localObject2).c();
          if (a)
          {
            String str = String.valueOf(paramcwf);
            n = ((cwl)localObject2).a();
            new StringBuilder(String.valueOf(str).length() + 40).append("not retrying ").append(str).append("; error code == ").append(n);
          }
          paramcwf.a((dvn)localObject3);
          b(paramcwf);
          n = i1;
          d = null;
        }
      }
      n = 0;
      continue;
      label273:
      if (((cwl)localObject2).b() > 0L) {
        a.f = (System.currentTimeMillis() + ((cwl)localObject2).b());
      }
      k.a(paramcwf);
      i = Math.min(TimeUnit.HOURS.toMillis(1L), i << 1);
      if (a)
      {
        localObject3 = b;
        paramcwf = String.valueOf(paramcwf);
        n = ((cwl)localObject2).a();
        new StringBuilder(String.valueOf(localObject3).length() + 60 + String.valueOf(paramcwf).length()).append("pausing queue ").append((String)localObject3).append(" after failed request:").append(paramcwf).append("; error code:").append(n);
        break label420;
        label413:
        f();
        continue;
      }
      label420:
      n = 1;
    }
  }
  
  public void a(cwf paramcwf, boolean paramBoolean)
  {
    if (a)
    {
      ??? = String.valueOf(paramcwf);
      int n = c.size();
      new StringBuilder(String.valueOf(???).length() + 37).append("queueRequest: ").append((String)???).append("; length is ").append(n);
    }
    if (g) {
      ezi.e("Babel_FutureNQ", "can't call queueRequest after queue is finished", new Object[0]);
    }
    do
    {
      do
      {
        return;
      } while (paramcwf.a() == null);
      if (paramcwf.e())
      {
        paramcwf.a(dvn.a);
        if (a)
        {
          ??? = String.valueOf(paramcwf);
          new StringBuilder(String.valueOf(???).length() + 45).append("Removing expired requestItem while queueing: ").append((String)???);
        }
        b(paramcwf);
        return;
      }
    } while (!c(paramcwf));
    for (;;)
    {
      synchronized (l)
      {
        if (!h)
        {
          if ((c.size() == 1) && (d == null)) {
            a(false);
          }
          return;
        }
      }
      if (!paramBoolean)
      {
        long l2 = paramcwf.f();
        long l1 = SystemClock.elapsedRealtime();
        if (l2 > j - l1)
        {
          l2 = j;
          if (l2 > l1) {}
        }
      }
    }
  }
  
  public void a(Class paramClass, String paramString)
  {
    Object localObject2;
    Object localObject3;
    for (;;)
    {
      cwf localcwf;
      synchronized (l)
      {
        if (g) {
          ezi.e("Babel_FutureNQ", "Should not cancel a request why request writer is finished", new Object[0]);
        }
        localObject2 = new ArrayList();
        localObject3 = c.iterator();
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        localcwf = (cwf)((Iterator)localObject3).next();
        if (!localcwf.a(paramClass, paramString)) {
          continue;
        }
        if (d == localcwf) {
          localcwf.a(paramString);
        }
      }
      ((List)localObject2).add(localcwf);
    }
    paramClass = ((List)localObject2).iterator();
    while (paramClass.hasNext())
    {
      localObject2 = (cwf)paramClass.next();
      if (a)
      {
        localObject3 = String.valueOf(localObject2);
        new StringBuilder(String.valueOf(localObject3).length() + 16).append("Cancel request: ").append((String)localObject3);
      }
      ((cwf)localObject2).a(dvn.b);
      b((cwf)localObject2);
      RealTimeChatService.c(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    Object localObject1 = l;
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        if (!h) {
          return;
        }
        if (a)
        {
          localObject2 = b;
          int n = c.size();
          new StringBuilder(String.valueOf(localObject2).length() + 29).append("resuming queue ").append((String)localObject2).append(" [").append(n).append("]");
        }
        h = false;
        Object localObject2 = f;
        if ((localObject2 != null) && (!((Future)localObject2).isDone()) && (!((Future)localObject2).isCancelled()))
        {
          paramBoolean = ((Future)localObject2).cancel(false);
          if (paramBoolean)
          {
            f = null;
            f();
          }
          return;
        }
      }
      finally {}
      paramBoolean = true;
    }
  }
  
  public boolean a(Thread paramThread)
  {
    return false;
  }
  
  public long b()
  {
    long l1 = Long.MAX_VALUE;
    for (;;)
    {
      synchronized (l)
      {
        if (c.size() == 0) {
          return Long.MAX_VALUE;
        }
        if (!e.b()) {
          break label113;
        }
        l1 = i;
        break label113;
        if (n < c.size())
        {
          long l2 = ((cwf)c.get(n)).f();
          if ((l2 >= 0L) && (l2 < l1))
          {
            l1 = l2;
            break label118;
          }
        }
        else
        {
          return l1;
        }
      }
      break label118;
      label113:
      int n = 0;
      continue;
      label118:
      n += 1;
    }
  }
  
  public int c()
  {
    return c.size();
  }
  
  public void d()
  {
    synchronized (l)
    {
      if (a)
      {
        String str = String.valueOf(toString());
        if (str.length() != 0) {
          "### finish ".concat(str);
        }
      }
      else
      {
        g = true;
        ??? = m;
        ((ExecutorService)???).shutdown();
      }
      try
      {
        if (!((ExecutorService)???).awaitTermination(10L, TimeUnit.SECONDS))
        {
          ((ExecutorService)???).shutdownNow();
          if (!((ExecutorService)???).awaitTermination(1L, TimeUnit.SECONDS)) {
            ezi.d("Babel_FutureNQ", "Pool did not terminate", new Object[0]);
          }
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        ((ExecutorService)???).shutdownNow();
        Thread.currentThread().interrupt();
      }
      new String("### finish ");
    }
  }
  
  public long e()
  {
    return i;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    synchronized (l)
    {
      localStringBuilder.append("FutureNetworkQueue(").append(b).append(") pending count == ").append(c.size()).append("\n");
      Iterator localIterator = c.iterator();
      if (localIterator.hasNext())
      {
        localStringBuilder.append(((cwf)localIterator.next()).toString());
        localStringBuilder.append("\n");
      }
    }
    return ((StringBuilder)localObject2).toString();
  }
}

/* Location:
 * Qualified Name:     cvy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */