import android.os.SystemClock;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class cwb
  implements cwd
{
  private static final boolean a = false;
  private boolean b;
  private final String c;
  private final Thread d;
  private final LinkedList<cwf> e = new LinkedList();
  private boolean f;
  private final Object g = new Object();
  private cwf h;
  private String i;
  private long j = 500L;
  private long k;
  private cwm l;
  private cwe m;
  
  static
  {
    imx localimx = ezi.j;
  }
  
  public cwb(String paramString, cwe paramcwe)
  {
    c = paramString;
    f = false;
    m = paramcwe;
    l = paramcwe.c();
    d = new cwc(this);
    if (a) {
      new StringBuilder(String.valueOf(paramString).length() + 40).append("### starting network thread for queue '").append(paramString).append("'");
    }
    d.setName(c);
  }
  
  private void a(cwf paramcwf)
  {
    synchronized (g)
    {
      if (a)
      {
        String str = String.valueOf(paramcwf);
        int n = e.size();
        new StringBuilder(String.valueOf(str).length() + 40).append("Removing request:").append(str).append(" queue_size:").append(n);
      }
      e.remove(paramcwf);
      l.a(a.a);
      if (paramcwf == h)
      {
        h = null;
        i = null;
      }
      return;
    }
  }
  
  private void b(long paramLong)
  {
    long l1 = Long.MAX_VALUE;
    label118:
    String str2;
    for (;;)
    {
      String str1;
      int n;
      synchronized (g)
      {
        if (a)
        {
          if (paramLong != Long.MAX_VALUE) {
            break label118;
          }
          str1 = "FOREVER";
          String str3 = c;
          n = e.size();
          new StringBuilder(String.valueOf(str3).length() + 38 + String.valueOf(str1).length()).append("pausing queue ").append(str3).append("[").append(n).append("]; duration ").append(str1);
        }
      }
      try
      {
        boolean bool = f;
        if (bool)
        {
          return;
          str1 = String.valueOf(paramLong);
        }
        else
        {
          if (paramLong == Long.MAX_VALUE) {}
          for (;;)
          {
            k = l1;
            g.wait(paramLong);
            if (m.b()) {
              b = false;
            }
            if (a)
            {
              str1 = c;
              n = e.size();
              new StringBuilder(String.valueOf(str1).length() + 20).append("/pause ").append(str1).append("[").append(n).append("]");
            }
            return;
            localObject1 = finally;
            throw ((Throwable)localObject1);
            l1 = SystemClock.elapsedRealtime();
            l1 += paramLong;
          }
          str2 = "InterruptedException in pauseQueue: ".concat(str2);
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        str2 = String.valueOf(localInterruptedException.toString());
        if (str2.length() == 0) {}
      }
    }
    for (;;)
    {
      ezi.d("Babel_NetworkQueue", str2, new Object[0]);
      break;
      str2 = new String("InterruptedException in pauseQueue: ");
    }
  }
  
  private boolean b(cwf paramcwf)
  {
    for (;;)
    {
      int n;
      synchronized (g)
      {
        Object localObject2 = new ArrayList();
        n = 0;
        int i1 = 0;
        Object localObject3;
        if (n < e.size())
        {
          localObject3 = (cwf)e.get(n);
          if ((paramcwf == localObject3) || (a.c != a.c)) {
            break label300;
          }
          if (a.a == a.a)
          {
            long l1 = a.a;
            ezi.a("Babel_NetworkQueue", 74 + "Insertion of " + l1 + " ignored since it isalready in the queue.", new Object[0]);
            return false;
          }
          cwi localcwi1 = paramcwf.a();
          cwi localcwi2 = ((cwf)localObject3).a();
          if ((localcwi1.getClass() != localcwi2.getClass()) || (h == localObject3) || (!localcwi1.a(localcwi2))) {
            break label300;
          }
          ((List)localObject2).add(localObject3);
          i1 = n;
          break label303;
        }
        e.add(i1, paramcwf);
        paramcwf = ((List)localObject2).iterator();
        if (paramcwf.hasNext())
        {
          localObject2 = (cwf)paramcwf.next();
          if (a)
          {
            localObject3 = String.valueOf(localObject2);
            new StringBuilder(String.valueOf(localObject3).length() + 29).append("not sending replaced request ").append((String)localObject3);
          }
          a((cwf)localObject2);
        }
      }
      return true;
      label300:
      label303:
      n += 1;
    }
  }
  
  private void g()
  {
    long l1;
    int n;
    long l2;
    synchronized (g)
    {
      if (f) {
        return;
      }
      l1 = j;
      long l3 = System.currentTimeMillis();
      n = e.size() - 1;
      if (n >= 0)
      {
        cwf localcwf = (cwf)e.get(n);
        l2 = localcwf.f();
        if (l2 > 0L) {
          break label232;
        }
        if (h == localcwf)
        {
          i = "";
          break label225;
        }
        localcwf.a(dvn.a);
        if (a)
        {
          String str = String.valueOf(localcwf);
          new StringBuilder(String.valueOf(str).length() + 38).append("pausing queue: remove expired request:").append(str);
        }
        a(localcwf);
        break label225;
      }
      l2 = l1;
      if (e.size() > 0)
      {
        long l4 = ((cwf)e.get(0)).g();
        l2 = l1;
        if (l4 > 0L) {
          l2 = Math.max(l4 - l3, l1);
        }
      }
      b = true;
      b(l2);
      return;
    }
    for (;;)
    {
      label222:
      label225:
      n -= 1;
      break;
      label232:
      if (l2 >= l1) {
        break label222;
      }
      l1 = l2;
    }
  }
  
  private cwf h()
  {
    synchronized (g)
    {
      if (!f)
      {
        if (e.size() == 0) {
          b(Long.MAX_VALUE);
        }
        if (e.size() > 0)
        {
          h = ((cwf)e.getLast());
          i = null;
          cwf localcwf = h;
          return localcwf;
        }
      }
      return null;
    }
  }
  
  public void a()
  {
    if (d != null)
    {
      d.start();
      return;
    }
    ezi.d("Babel_NetworkQueue", "Try to start the queue while the thread is null! ", new Object[0]);
  }
  
  public void a(long paramLong)
  {
    j = paramLong;
  }
  
  public void a(cwf paramcwf, boolean paramBoolean)
  {
    Object localObject2;
    synchronized (g)
    {
      if (a)
      {
        localObject2 = String.valueOf(paramcwf);
        int n = e.size();
        new StringBuilder(String.valueOf(localObject2).length() + 37).append("queueRequest: ").append((String)localObject2).append("; length is ").append(n);
      }
      if (f)
      {
        ezi.e("Babel_NetworkQueue", "can't call queueRequest after queue is finished", new Object[0]);
        return;
      }
      localObject2 = paramcwf.a();
      if (localObject2 == null) {
        return;
      }
    }
    if (paramcwf.e())
    {
      paramcwf.a(dvn.a);
      if (a)
      {
        localObject2 = String.valueOf(paramcwf);
        new StringBuilder(String.valueOf(localObject2).length() + 45).append("Removing expired requestItem while queueing: ").append((String)localObject2);
      }
      a(paramcwf);
      return;
    }
    if (b(paramcwf)) {
      if (a)
      {
        String str = ((cwi)localObject2).e();
        if (str != null)
        {
          localObject2 = String.valueOf("Queueing stress message requestItem in RequestWriter");
          str = String.valueOf(str);
          if (str.length() == 0) {
            break label314;
          }
          ((String)localObject2).concat(str);
        }
      }
    }
    for (;;)
    {
      if ((e.size() == 1) && (!b)) {
        a(false);
      }
      if (b) {
        if (!paramBoolean)
        {
          long l1 = paramcwf.f();
          long l2 = SystemClock.elapsedRealtime();
          if ((l1 > k - l2) && (k > l2)) {}
        }
        else
        {
          a(false);
        }
      }
      return;
      label314:
      new String((String)localObject2);
    }
  }
  
  public void a(Class paramClass, String paramString)
  {
    for (;;)
    {
      Object localObject2;
      int n;
      Object localObject3;
      synchronized (g)
      {
        if (f) {
          ezi.e("Babel_NetworkQueue", "Should not cancel a request why request writer is finished", new Object[0]);
        }
        localObject2 = new ArrayList();
        n = 0;
        if (n < e.size())
        {
          localObject3 = (cwf)e.get(n);
          if (!((cwf)localObject3).a(paramClass, paramString)) {
            break label207;
          }
          if ((n == 0) && (h != null)) {
            i = paramString;
          } else {
            ((List)localObject2).add(localObject3);
          }
        }
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
        a((cwf)localObject2);
        RealTimeChatService.c(paramString);
      }
      return;
      label207:
      n += 1;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    Object localObject1 = g;
    if (paramBoolean) {}
    try
    {
      if (!b) {
        return;
      }
      if (a)
      {
        String str = c;
        int n = e.size();
        new StringBuilder(String.valueOf(str).length() + 29).append("resuming queue ").append(str).append(" [").append(n).append("]");
      }
      b = false;
      g.notifyAll();
      return;
    }
    finally {}
  }
  
  public boolean a(Thread paramThread)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (d != null)
    {
      bool1 = bool2;
      if (d == paramThread) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public long b()
  {
    long l1 = Long.MAX_VALUE;
    for (;;)
    {
      synchronized (g)
      {
        if (e.size() == 0) {
          return Long.MAX_VALUE;
        }
        if (!m.b()) {
          break label113;
        }
        l1 = j;
        break label113;
        if (n < e.size())
        {
          long l2 = ((cwf)e.get(n)).f();
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
    return e.size();
  }
  
  public void d()
  {
    for (;;)
    {
      synchronized (g)
      {
        if (a)
        {
          String str2 = String.valueOf(toString());
          if (str2.length() != 0) {
            "### finish ".concat(str2);
          }
        }
        else
        {
          f = true;
          a(false);
        }
      }
      try
      {
        long l1 = System.currentTimeMillis();
        d.join(10000L);
        long l2 = System.currentTimeMillis();
        if ((a) || (d.isAlive())) {
          String.format(Locale.US, "LegacyNetworkQueue.finish [%s] took %d ms; isAlive returning %b", new Object[] { c, Long.valueOf(l2 - l1), Boolean.valueOf(d.isAlive()) });
        }
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        str1 = String.valueOf(localInterruptedException.toString());
        if (str1.length() == 0) {
          break;
        }
      }
      new String("### finish ");
    }
    localObject2 = finally;
    throw ((Throwable)localObject2);
    for (String str1 = "InterruptedException in finish: ".concat(str1);; str1 = new String("InterruptedException in finish: "))
    {
      ezi.d("Babel_NetworkQueue", str1, new Object[0]);
      return;
    }
  }
  
  public long e()
  {
    return j;
  }
  
  void f()
  {
    for (;;)
    {
      cwf localcwf = h();
      if ((localcwf != null) && (!((hpz)ilh.a(aal.oJ, hpz.class)).c(a.c)))
      {
        a(localcwf);
        continue;
      }
      if (localcwf != null)
      {
        Object localObject6 = localcwf.a();
        ??? = null;
        if (a) {
          ??? = ((cwi)localObject6).e();
        }
        localObject6 = new cwl();
        int i1 = localcwf.a(m, (cwl)localObject6);
        int n = c();
        if (a)
        {
          ??? = c;
          new StringBuilder(String.valueOf(???).length() + 32).append("Network Queue ").append((String)???).append(" size: ").append(n);
        }
        aen.a(a.c, System.currentTimeMillis(), 14, new csn().e(c).c(n).a().b());
        long l1 = System.currentTimeMillis();
        if (!m.H_()) {
          break label891;
        }
        String str;
        if (??? != null)
        {
          ??? = String.valueOf("Sending stress message in RequestWriter:");
          str = String.valueOf(???);
          if (str.length() != 0) {
            ((String)???).concat(str);
          }
        }
        else
        {
          n = i1;
          if (i1 == cwj.a) {
            n = localcwf.b(m, (cwl)localObject6);
          }
          if (n != cwj.b) {
            break label458;
          }
          if (??? != null)
          {
            localObject6 = String.valueOf("Sent stress message succeeded in RequestWriter:");
            ??? = String.valueOf(???);
            if (((String)???).length() == 0) {
              break label445;
            }
            ((String)localObject6).concat((String)???);
          }
        }
        for (;;)
        {
          m.a(500L);
          j = 500L;
          if (a)
          {
            ??? = String.valueOf(localcwf);
            new StringBuilder(String.valueOf(???).length() + 41).append("request successful. removing from queue: ").append((String)???);
          }
          a(localcwf);
          m.a(true);
          n = 0;
          synchronized (g)
          {
            m.I_();
            if (n != 0) {
              g();
            }
          }
          new String((String)???);
          break;
          label445:
          new String((String)localObject6);
        }
        label458:
        long l2 = System.currentTimeMillis();
        if (ezi.a("Babel_NetworkQueue", 3)) {
          ezi.a("Babel_NetworkQueue", String.format(Locale.US, "error sending %s; took %d ms (error code == %d)", new Object[] { localObject4, Long.valueOf(l2 - l1), Integer.valueOf(((cwl)localObject6).a()) }), new Object[0]);
        }
        for (;;)
        {
          synchronized (g)
          {
            m.a(false);
            if (i != null) {
              RealTimeChatService.c(i);
            }
            if ((i == null) && (((cwf)localObject4).a((cwl)localObject6)))
            {
              n = 1;
              if (n != 0) {
                break label681;
              }
              ??? = ((cwl)localObject6).c();
              if (a)
              {
                str = String.valueOf(localObject4);
                n = ((cwl)localObject6).a();
                new StringBuilder(String.valueOf(str).length() + 40).append("not retrying ").append(str).append("; error code == ").append(n);
              }
              ((cwf)localObject4).a((dvn)???);
              a((cwf)localObject4);
              n = 0;
              h = null;
            }
          }
          n = 0;
          continue;
          label681:
          if (localObject2 != null)
          {
            str = String.valueOf("Sending stress message failed with error=");
            n = ((cwl)localObject6).a();
            new StringBuilder(String.valueOf(str).length() + 24 + String.valueOf(localObject2).length()).append(str).append(n).append(", will retry:").append((String)localObject2);
          }
          if (((cwl)localObject6).b() > 0L) {
            a.f = (System.currentTimeMillis() + ((cwl)localObject6).b());
          }
          l.a((cwf)localObject4);
          j = Math.min(TimeUnit.SECONDS.toMillis(3600L), j << 1);
          if (a)
          {
            ??? = String.valueOf(localObject4);
            n = ((cwl)localObject6).a();
            new StringBuilder(String.valueOf(???).length() + 59).append("pausing queue after failed request:").append((String)???).append("; error code:").append(n);
          }
          n = 1;
        }
      }
      synchronized (g)
      {
        if (f)
        {
          label891:
          if (a)
          {
            ??? = c;
            new StringBuilder(String.valueOf(???).length() + 24).append("### queue '").append((String)???).append("' is finished");
          }
          return;
        }
      }
    }
  }
  
  public String toString()
  {
    synchronized (g)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("LegacyNetworkQueue(").append(c).append(") pending count == ").append(e.size()).append("\n");
      Iterator localIterator = e.iterator();
      if (localIterator.hasNext())
      {
        localStringBuilder.append(((cwf)localIterator.next()).toString());
        localStringBuilder.append("\n");
      }
    }
    String str = ((StringBuilder)localObject2).toString();
    return str;
  }
}

/* Location:
 * Qualified Name:     cwb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */