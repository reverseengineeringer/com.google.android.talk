import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;

public final class fiv
  implements fjs
{
  public final fjj a;
  final Lock b;
  final Context c;
  gra d;
  boolean e;
  boolean f;
  fks g;
  boolean h;
  boolean i;
  private final fho j;
  private ConnectionResult k;
  private int l;
  private int m = 0;
  private boolean n = false;
  private int o;
  private final Bundle p = new Bundle();
  private final Set<fib> q = new HashSet();
  private int r;
  private final fkq s;
  private final Map<fhw<?>, Integer> t;
  private final fhx<? extends gra, gqd> u;
  private ArrayList<Future<?>> v = new ArrayList();
  
  public fiv(fjj paramfjj, fkq paramfkq, Map<fhw<?>, Integer> paramMap, fho paramfho, fhx<? extends gra, gqd> paramfhx, Lock paramLock, Context paramContext)
  {
    a = paramfjj;
    s = paramfkq;
    t = paramMap;
    j = paramfho;
    u = paramfhx;
    b = paramLock;
    c = paramContext;
  }
  
  private void a(boolean paramBoolean)
  {
    if (d != null)
    {
      if ((d.d()) && (paramBoolean)) {
        d.o();
      }
      d.c();
      g = null;
    }
  }
  
  private static String c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN";
    case 0: 
      return "STEP_GETTING_SERVICE_BINDINGS";
    case 1: 
      return "STEP_VALIDATING_ACCOUNT";
    case 2: 
      return "STEP_AUTHENTICATING";
    }
    return "STEP_GETTING_REMOTE_SERVICE";
  }
  
  private void k()
  {
    a.j();
    fjt.a.execute(new fiw(this));
    if (d != null)
    {
      if (h) {
        d.a(g, i);
      }
      a(false);
    }
    Object localObject = a.f.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      fib localfib = (fib)((Iterator)localObject).next();
      ((fia)a.e.get(localfib)).c();
    }
    if (n)
    {
      n = false;
      b();
      return;
    }
    if (p.isEmpty()) {}
    for (localObject = null;; localObject = p)
    {
      a.b.a((Bundle)localObject);
      return;
    }
  }
  
  private void l()
  {
    Iterator localIterator = v.iterator();
    while (localIterator.hasNext()) {
      ((Future)localIterator.next()).cancel(true);
    }
    v.clear();
  }
  
  public <A extends fia, R extends fim, T extends fir<R, A>> T a(T paramT)
  {
    a.c.add(paramT);
    return paramT;
  }
  
  public void a()
  {
    a.b.b();
    a.f.clear();
    n = false;
    e = false;
    k = null;
    m = 0;
    r = 2;
    f = false;
    h = false;
    HashMap localHashMap = new HashMap();
    Object localObject = t.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      fhw localfhw = (fhw)((Iterator)localObject).next();
      fia localfia = (fia)a.e.get(localfhw.c());
      int i1 = ((Integer)t.get(localfhw)).intValue();
      localfhw.a();
      if (localfia.e())
      {
        e = true;
        if (i1 < r) {
          r = i1;
        }
        if (i1 != 0) {
          q.add(localfhw.c());
        }
      }
      localHashMap.put(localfia, new fjb(this, localfhw, i1));
    }
    if (e)
    {
      s.a(Integer.valueOf(a.n()));
      localObject = new fjf(this);
      d = ((gra)u.a(c, a.a(), s, s.i(), (fif)localObject, (fih)localObject));
    }
    o = a.e.size();
    v.add(fjt.a.submit(new fjc(this, localHashMap)));
  }
  
  public void a(int paramInt)
  {
    b(new ConnectionResult(8, null));
  }
  
  public void a(Bundle paramBundle)
  {
    if (!b(3)) {}
    do
    {
      return;
      if (paramBundle != null) {
        p.putAll(paramBundle);
      }
    } while (!e());
    k();
  }
  
  public void a(ConnectionResult paramConnectionResult, fhw<?> paramfhw, int paramInt)
  {
    if (!b(3)) {}
    do
    {
      return;
      b(paramConnectionResult, paramfhw, paramInt);
    } while (!e());
    k();
  }
  
  boolean a(ConnectionResult paramConnectionResult)
  {
    return (r == 2) || ((r == 1) && (!paramConnectionResult.a()));
  }
  
  public <A extends fia, T extends fir<? extends fim, A>> T b(T paramT)
  {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
  
  public void b()
  {
    Iterator localIterator = a.c.iterator();
    while (localIterator.hasNext())
    {
      ((fjr)localIterator.next()).c();
      localIterator.remove();
    }
    a.g();
    if ((k == null) && (!a.c.isEmpty()))
    {
      n = true;
      return;
    }
    l();
    a(true);
    a.f.clear();
    a.a(null);
    a.b.a();
  }
  
  void b(ConnectionResult paramConnectionResult)
  {
    boolean bool = false;
    n = false;
    l();
    if (!paramConnectionResult.a()) {
      bool = true;
    }
    a(bool);
    a.f.clear();
    a.a(paramConnectionResult);
    if ((!a.k()) || (!fho.a(c, paramConnectionResult.c())))
    {
      a.m();
      a.b.a(paramConnectionResult);
    }
    a.b.a();
  }
  
  void b(ConnectionResult paramConnectionResult, fhw<?> paramfhw, int paramInt)
  {
    int i1 = 1;
    if (paramInt != 2)
    {
      paramfhw.a();
      if (paramInt == 1)
      {
        if (!paramConnectionResult.a()) {
          break label89;
        }
        paramInt = 1;
        if (paramInt == 0) {
          break label109;
        }
      }
      paramInt = i1;
      if (k != null) {
        if (Integer.MAX_VALUE >= l) {
          break label109;
        }
      }
    }
    label89:
    label109:
    for (paramInt = i1;; paramInt = 0)
    {
      if (paramInt != 0)
      {
        k = paramConnectionResult;
        l = Integer.MAX_VALUE;
      }
      a.f.put(paramfhw.c(), paramConnectionResult);
      return;
      if (fho.a(paramConnectionResult.c()) != null)
      {
        paramInt = 1;
        break;
      }
      paramInt = 0;
      break;
    }
  }
  
  boolean b(int paramInt)
  {
    if (m != paramInt)
    {
      Log.wtf("GoogleApiClientConnecting", "GoogleApiClient connecting is in step " + c(m) + " but received callback for step " + c(paramInt));
      b(new ConnectionResult(8, null));
      return false;
    }
    return true;
  }
  
  public void c()
  {
    n = false;
  }
  
  public String d()
  {
    return "CONNECTING";
  }
  
  boolean e()
  {
    o -= 1;
    if (o > 0) {
      return false;
    }
    if (o < 0)
    {
      Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.");
      b(new ConnectionResult(8, null));
      return false;
    }
    if (k != null)
    {
      b(k);
      return false;
    }
    return true;
  }
  
  void f()
  {
    if (o != 0) {}
    ArrayList localArrayList;
    do
    {
      do
      {
        return;
        if (!e) {
          break;
        }
      } while (!f);
      localArrayList = new ArrayList();
      m = 1;
      o = a.e.size();
      Iterator localIterator = a.e.keySet().iterator();
      while (localIterator.hasNext())
      {
        fib localfib = (fib)localIterator.next();
        if (a.f.containsKey(localfib))
        {
          if (e()) {
            g();
          }
        }
        else {
          localArrayList.add(a.e.get(localfib));
        }
      }
    } while (localArrayList.isEmpty());
    v.add(fjt.a.submit(new fjg(this, localArrayList)));
    return;
    h();
  }
  
  void g()
  {
    m = 2;
    a.g = j();
    v.add(fjt.a.submit(new fja(this)));
  }
  
  void h()
  {
    ArrayList localArrayList = new ArrayList();
    m = 3;
    o = a.e.size();
    Iterator localIterator = a.e.keySet().iterator();
    while (localIterator.hasNext())
    {
      fib localfib = (fib)localIterator.next();
      if (a.f.containsKey(localfib))
      {
        if (e()) {
          k();
        }
      }
      else {
        localArrayList.add(a.e.get(localfib));
      }
    }
    if (!localArrayList.isEmpty()) {
      v.add(fjt.a.submit(new fje(this, localArrayList)));
    }
  }
  
  void i()
  {
    e = false;
    a.g = Collections.emptySet();
    Iterator localIterator = q.iterator();
    while (localIterator.hasNext())
    {
      fib localfib = (fib)localIterator.next();
      if (!a.f.containsKey(localfib)) {
        a.f.put(localfib, new ConnectionResult(17, null));
      }
    }
  }
  
  Set<Scope> j()
  {
    HashSet localHashSet = new HashSet(s.d());
    Map localMap = s.f();
    Iterator localIterator = localMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      fhw localfhw = (fhw)localIterator.next();
      if (!a.f.containsKey(localfhw.c())) {
        localHashSet.addAll(geta);
      }
    }
    return localHashSet;
  }
}

/* Location:
 * Qualified Name:     fiv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */