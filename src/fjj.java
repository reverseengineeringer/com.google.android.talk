import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

public final class fjj
  implements fic
{
  private final fln A = new fjl(this);
  final Lock a = new ReentrantLock();
  final flm b;
  final Queue<fjr<?>> c = new LinkedList();
  BroadcastReceiver d;
  final Map<fib<?>, fia> e = new HashMap();
  final Map<fib<?>, ConnectionResult> f = new HashMap();
  Set<Scope> g = new HashSet();
  final fkq h;
  final Map<fhw<?>, Integer> i;
  final fhx<? extends gra, gqd> j;
  volatile fjs k;
  final Set<fjr<?>> l = Collections.newSetFromMap(new ConcurrentHashMap(16, 0.75F, 2));
  private final Condition m;
  private final int n;
  private final int o;
  private final Context p;
  private final Looper q;
  private volatile boolean r;
  private long s = 120000L;
  private long t = 5000L;
  private final fjn u;
  private final fho v;
  private ConnectionResult w = null;
  private final Set<fju<?>> x = Collections.newSetFromMap(new WeakHashMap());
  private final fjq y = new fjq(this);
  private final fif z = new fjk(this);
  
  public fjj(Context paramContext, Looper paramLooper, fkq paramfkq, fho paramfho, fhx<? extends gra, gqd> paramfhx, Map<fhw<?>, fhy> paramMap, ArrayList<fif> paramArrayList, ArrayList<fih> paramArrayList1, int paramInt1, int paramInt2)
  {
    p = paramContext;
    b = new flm(paramLooper, A);
    q = paramLooper;
    u = new fjn(this, paramLooper);
    v = paramfho;
    n = paramInt1;
    o = paramInt2;
    i = new HashMap();
    m = a.newCondition();
    k = new fji(this);
    paramfho = paramArrayList.iterator();
    while (paramfho.hasNext())
    {
      paramArrayList = (fif)paramfho.next();
      b.a(paramArrayList);
    }
    paramfho = paramArrayList1.iterator();
    while (paramfho.hasNext())
    {
      paramArrayList = (fih)paramfho.next();
      b.a(paramArrayList);
    }
    paramArrayList = paramfkq.f();
    paramArrayList1 = paramMap.keySet().iterator();
    fhw localfhw;
    if (paramArrayList1.hasNext())
    {
      localfhw = (fhw)paramArrayList1.next();
      paramfho = paramMap.get(localfhw);
      if (paramArrayList.get(localfhw) == null) {
        break label554;
      }
      if (getb) {
        paramInt1 = 1;
      }
    }
    for (;;)
    {
      label408:
      i.put(localfhw, Integer.valueOf(paramInt1));
      fif localfif;
      fih localfih;
      if (localfhw.d())
      {
        paramfho = localfhw.b();
        localfif = z;
        localfih = a(localfhw, paramInt1);
      }
      for (paramfho = new fkw(paramContext, paramLooper, paramfho.j(), localfif, localfih, paramfkq, paramfho.i());; paramfho = localfhw.a().a(paramContext, paramLooper, paramfkq, paramfho, z, a(localfhw, paramInt1)))
      {
        e.put(localfhw.c(), paramfho);
        break;
        paramInt1 = 2;
        break label408;
      }
      h = paramfkq;
      j = paramfhx;
      return;
      label554:
      paramInt1 = 0;
    }
  }
  
  private final fih a(fhw<?> paramfhw, int paramInt)
  {
    return new fjm(this, paramfhw, paramInt);
  }
  
  public Looper a()
  {
    return q;
  }
  
  public ConnectionResult a(TimeUnit paramTimeUnit)
  {
    boolean bool;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool = true;
    }
    for (;;)
    {
      aal.a(bool, "blockingConnect must not be called on the UI thread");
      a.lock();
      try
      {
        b();
        long l1 = paramTimeUnit.toNanos(1000L);
        for (;;)
        {
          bool = f();
          if (!bool) {
            break;
          }
          try
          {
            long l2 = m.awaitNanos(l1);
            l1 = l2;
            if (l2 <= 0L)
            {
              paramTimeUnit = new ConnectionResult(14, null);
              return paramTimeUnit;
            }
          }
          catch (InterruptedException paramTimeUnit)
          {
            Thread.currentThread().interrupt();
            paramTimeUnit = new ConnectionResult(15, null);
            return paramTimeUnit;
          }
        }
        bool = false;
        continue;
        if (e())
        {
          paramTimeUnit = ConnectionResult.a;
          return paramTimeUnit;
        }
        if (w != null)
        {
          paramTimeUnit = w;
          return paramTimeUnit;
        }
        paramTimeUnit = new ConnectionResult(13, null);
        return paramTimeUnit;
      }
      finally
      {
        a.unlock();
      }
    }
  }
  
  public <C extends fia> C a(fib<C> paramfib)
  {
    paramfib = (fia)e.get(paramfib);
    aal.b(paramfib, "Appropriate Api was not requested.");
    return paramfib;
  }
  
  public <A extends fia, R extends fim, T extends fir<R, A>> T a(T paramT)
  {
    if (h != null) {}
    for (boolean bool = true;; bool = false)
    {
      aal.b(bool, "This task can not be enqueued (it's probably a Batch or malformed)");
      aal.b(e.containsKey(h), "GoogleApiClient is not configured to use the API required for this call.");
      a.lock();
      try
      {
        paramT = k.a(paramT);
        return paramT;
      }
      finally
      {
        a.unlock();
      }
    }
  }
  
  public <L> fju<L> a(L paramL)
  {
    aal.b(paramL, "Listener must not be null");
    a.lock();
    try
    {
      paramL = new fju(q, paramL);
      x.add(paramL);
      return paramL;
    }
    finally
    {
      a.unlock();
    }
  }
  
  void a(ConnectionResult paramConnectionResult)
  {
    a.lock();
    try
    {
      w = paramConnectionResult;
      k = new fji(this);
      k.a();
      m.signalAll();
      return;
    }
    finally
    {
      a.unlock();
    }
  }
  
  public void a(fif paramfif)
  {
    b.a(paramfif);
  }
  
  public void a(fih paramfih)
  {
    b.a(paramfih);
  }
  
  public void a(fjo paramfjo)
  {
    paramfjo = u.obtainMessage(3, paramfjo);
    u.sendMessage(paramfjo);
  }
  
  <A extends fia> void a(fjr<A> paramfjr)
  {
    l.add(paramfjr);
    paramfjr.a(y);
  }
  
  void a(RuntimeException paramRuntimeException)
  {
    paramRuntimeException = u.obtainMessage(4, paramRuntimeException);
    u.sendMessage(paramRuntimeException);
  }
  
  public void a(String paramString, PrintWriter paramPrintWriter)
  {
    paramPrintWriter.append(paramString).append("mState=").append(k.d());
    paramPrintWriter.append(" mResuming=").print(r);
    paramPrintWriter.append(" mWorkQueue.size()=").print(c.size());
    paramPrintWriter.append(" mUnconsumedRunners.size()=").println(l.size());
    String str = paramString + "  ";
    Iterator localIterator = i.keySet().iterator();
    while (localIterator.hasNext())
    {
      fhw localfhw = (fhw)localIterator.next();
      paramPrintWriter.append(paramString).append(localfhw.e()).println(":");
      ((fia)e.get(localfhw.c())).a(str, paramPrintWriter);
    }
  }
  
  public <A extends fia, T extends fir<? extends fim, A>> T b(T paramT)
  {
    boolean bool;
    if (h != null) {
      bool = true;
    }
    for (;;)
    {
      aal.b(bool, "This task can not be executed (it's probably a Batch or malformed)");
      a.lock();
      try
      {
        if (!k()) {
          break label113;
        }
        c.add(paramT);
        while (!c.isEmpty())
        {
          fjr localfjr = (fjr)c.remove();
          a(localfjr);
          localfjr.c(Status.c);
        }
        bool = false;
      }
      finally
      {
        a.unlock();
      }
    }
    a.unlock();
    return paramT;
    label113:
    paramT = k.b(paramT);
    a.unlock();
    return paramT;
  }
  
  public void b()
  {
    a.lock();
    try
    {
      k.c();
      return;
    }
    finally
    {
      a.unlock();
    }
  }
  
  public void b(fif paramfif)
  {
    b.b(paramfif);
  }
  
  public void b(fih paramfih)
  {
    b.b(paramfih);
  }
  
  public ConnectionResult c()
  {
    boolean bool;
    if (Looper.myLooper() != Looper.getMainLooper()) {
      bool = true;
    }
    for (;;)
    {
      aal.a(bool, "blockingConnect must not be called on the UI thread");
      a.lock();
      try
      {
        b();
        for (;;)
        {
          bool = f();
          if (!bool) {
            break label86;
          }
          try
          {
            m.await();
          }
          catch (InterruptedException localInterruptedException)
          {
            Thread.currentThread().interrupt();
            localConnectionResult = new ConnectionResult(15, null);
            return localConnectionResult;
          }
        }
        bool = false;
        continue;
        label86:
        if (e())
        {
          localConnectionResult = ConnectionResult.a;
          return localConnectionResult;
        }
        if (w != null)
        {
          localConnectionResult = w;
          return localConnectionResult;
        }
        ConnectionResult localConnectionResult = new ConnectionResult(13, null);
        return localConnectionResult;
      }
      finally
      {
        a.unlock();
      }
    }
  }
  
  public void d()
  {
    a.lock();
    try
    {
      m();
      k.b();
      return;
    }
    finally
    {
      a.unlock();
    }
  }
  
  public boolean e()
  {
    return k instanceof fit;
  }
  
  public boolean f()
  {
    return k instanceof fiv;
  }
  
  void g()
  {
    Iterator localIterator = l.iterator();
    while (localIterator.hasNext())
    {
      fjr localfjr = (fjr)localIterator.next();
      localfjr.a(null);
      localfjr.c();
    }
    l.clear();
    localIterator = x.iterator();
    while (localIterator.hasNext()) {
      ((fju)localIterator.next()).a();
    }
    x.clear();
  }
  
  void h()
  {
    Iterator localIterator = e.values().iterator();
    while (localIterator.hasNext()) {
      ((fia)localIterator.next()).c();
    }
  }
  
  void i()
  {
    a.lock();
    try
    {
      k = new fiv(this, h, i, v, j, a, p);
      k.a();
      m.signalAll();
      return;
    }
    finally
    {
      a.unlock();
    }
  }
  
  void j()
  {
    a.lock();
    try
    {
      m();
      k = new fit(this);
      k.a();
      m.signalAll();
      return;
    }
    finally
    {
      a.unlock();
    }
  }
  
  boolean k()
  {
    return r;
  }
  
  void l()
  {
    if (k()) {
      return;
    }
    r = true;
    if (d == null)
    {
      d = new fjp(this);
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
      localIntentFilter.addDataScheme("package");
      p.getApplicationContext().registerReceiver(d, localIntentFilter);
    }
    u.sendMessageDelayed(u.obtainMessage(1), s);
    u.sendMessageDelayed(u.obtainMessage(2), t);
  }
  
  boolean m()
  {
    if (!k()) {
      return false;
    }
    r = false;
    u.removeMessages(2);
    u.removeMessages(1);
    if (d != null)
    {
      p.getApplicationContext().unregisterReceiver(d);
      d = null;
    }
    return true;
  }
  
  public int n()
  {
    return System.identityHashCode(this);
  }
}

/* Location:
 * Qualified Name:     fjj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */