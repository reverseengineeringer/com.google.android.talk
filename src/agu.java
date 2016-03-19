import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public final class agu
{
  private AtomicInteger a = new AtomicInteger();
  private final Map<String, Queue<agr<?>>> b = new HashMap();
  private final Set<agr<?>> c = new HashSet();
  private final PriorityBlockingQueue<agr<?>> d = new PriorityBlockingQueue();
  private final PriorityBlockingQueue<agr<?>> e = new PriorityBlockingQueue();
  private final agi f;
  private final ago g;
  private final agy h;
  private agp[] i;
  private agk j;
  private List<a> k = new ArrayList();
  
  public agu(agi paramagi, ago paramago, int paramInt)
  {
    this(paramagi, paramago, paramInt, new agy(new Handler(Looper.getMainLooper())));
  }
  
  private agu(agi paramagi, ago paramago, int paramInt, agy paramagy)
  {
    f = paramagi;
    g = paramago;
    i = new agp[paramInt];
    h = paramagy;
  }
  
  public <T> agr<T> a(agr<T> paramagr)
  {
    paramagr.a(this);
    synchronized (c)
    {
      c.add(paramagr);
      b = Integer.valueOf(a.incrementAndGet());
      paramagr.a("add-to-queue");
      if (!c)
      {
        e.add(paramagr);
        return paramagr;
      }
    }
    for (;;)
    {
      String str;
      synchronized (b)
      {
        str = paramagr.d();
        if (b.containsKey(str))
        {
          Queue localQueue = (Queue)b.get(str);
          ??? = localQueue;
          if (localQueue == null) {
            ??? = new LinkedList();
          }
          ((Queue)???).add(paramagr);
          b.put(str, ???);
          if (ahb.b) {
            ahb.a("Request for cacheKey=%s is in flight, putting on hold.", new Object[] { str });
          }
          return paramagr;
        }
      }
      b.put(str, null);
      d.add(paramagr);
    }
  }
  
  public void a()
  {
    int n = 0;
    if (j != null) {
      j.a();
    }
    int m = 0;
    while (m < i.length)
    {
      if (i[m] != null) {
        i[m].a();
      }
      m += 1;
    }
    j = new agk(d, e, f, h);
    j.start();
    m = n;
    while (m < i.length)
    {
      agp localagp = new agp(e, g, f, h);
      i[m] = localagp;
      localagp.start();
      m += 1;
    }
  }
  
  public agi b()
  {
    return f;
  }
  
  <T> void b(agr<T> paramagr)
  {
    Object localObject2;
    synchronized (c)
    {
      c.remove(paramagr);
      synchronized (k)
      {
        localObject2 = k.iterator();
        if (((Iterator)localObject2).hasNext()) {
          ((Iterator)localObject2).next();
        }
      }
    }
    if (c) {
      synchronized (b)
      {
        paramagr = paramagr.d();
        localObject2 = (Queue)b.remove(paramagr);
        if (localObject2 != null)
        {
          if (ahb.b) {
            ahb.a("Releasing %d waiting requests for cacheKey=%s.", new Object[] { Integer.valueOf(((Queue)localObject2).size()), paramagr });
          }
          d.addAll((Collection)localObject2);
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     agu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */