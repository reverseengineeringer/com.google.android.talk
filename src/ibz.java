import android.accounts.AuthenticatorException;
import android.util.Log;
import android.util.SparseArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

final class ibz
{
  private final hqi b;
  private final String c;
  private final iaj d;
  private final boolean e;
  private final hqc f;
  private ihw g;
  private boolean h;
  private List<ias> i;
  private int j;
  private Map<ias, iat> k;
  private List<Exception> l = new ArrayList();
  private boolean m;
  private boolean n;
  private boolean o;
  
  ibz(ibw paramibw, hqi paramhqi, String paramString, iaj paramiaj, boolean paramBoolean)
  {
    b = paramhqi;
    c = paramString;
    d = paramiaj;
    e = paramBoolean;
    j = d.b(paramhqi.a(), paramString);
    if (j == -1) {}
    for (paramibw = d.a(paramhqi.a(), paramString);; paramibw = d.b(j))
    {
      f = paramibw;
      f.b("device_index", paramhqi.b());
      return;
    }
  }
  
  public void a(iba paramiba)
  {
    boolean bool2 = a;
    if (!m) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      a = (bool1 & bool2);
      b |= n;
      c |= o;
      f.add(Integer.valueOf(j));
      e.addAll(l);
      d = j;
      return;
    }
  }
  
  void a(Exception paramException)
  {
    boolean bool1 = false;
    Log.e("LoginManager", "Account update failed", paramException);
    l.add(paramException);
    m = true;
    int i1 = 1;
    if (paramException != null) {
      if ((paramException instanceof gwm))
      {
        gwm localgwm = (gwm)paramException;
        a.b.put(j, localgwm.a());
      }
    }
    for (;;)
    {
      paramException = paramException.getCause();
      break;
      if ((paramException instanceof AuthenticatorException))
      {
        i1 = 0;
        continue;
        n |= i1;
        boolean bool2 = o;
        if (i1 == 0) {
          bool1 = true;
        }
        o = (bool2 | bool1);
        return;
      }
    }
  }
  
  void a(List<ias> paramList)
  {
    boolean bool2 = true;
    if (m) {
      return;
    }
    if (b.c())
    {
      g = null;
      h = true;
      i = new ArrayList();
      return;
    }
    g = new ihw(b.a(), c, e);
    boolean bool1 = bool2;
    if (!a.d(j)) {
      if (e) {
        break label111;
      }
    }
    label111:
    for (bool1 = bool2;; bool1 = false)
    {
      h = bool1;
      i = new ArrayList(paramList);
      return;
    }
  }
  
  boolean a()
  {
    if (m) {
      return true;
    }
    for (;;)
    {
      try
      {
        Iterator localIterator = k.keySet().iterator();
        if (!localIterator.hasNext()) {
          break label114;
        }
        ias localias = (ias)localIterator.next();
        iat localiat = (iat)k.get(localias);
        if (localiat == null) {
          break label126;
        }
        if (localiat.a(f) == iau.b)
        {
          i1 = 1;
          if (i1 != 0) {
            continue;
          }
          i.remove(localias);
          continue;
        }
        i1 = 0;
      }
      catch (IOException localIOException)
      {
        a(localIOException);
        return true;
      }
      continue;
      label114:
      boolean bool = i.isEmpty();
      return bool;
      label126:
      int i1 = 0;
    }
  }
  
  void b()
  {
    int i1 = 1;
    if (m)
    {
      if (o) {
        f.b("has_irrecoverable_error", true);
      }
      for (;;)
      {
        j = f.d();
        if ((o) && (j != -1)) {
          a.f(j);
        }
        return;
        f.f("has_irrecoverable_error");
      }
    }
    f.b("LoginManager.last_updated", a.c.a());
    f.b("LoginManager.build_version", a.f.a());
    Object localObject = new ArrayList();
    if (a.g != null) {
      a.g.a((List)localObject);
    }
    if ((a.g != null) && (a.g.a(b.a()))) {
      iar localiar = a.g;
    }
    for (;;)
    {
      if (i1 != 0)
      {
        localObject = a.a((List)localObject);
        ibw.a(f, (List)localObject);
      }
      if (!o) {
        f.f("has_irrecoverable_error");
      }
      j = f.d();
      a.e(j);
      return;
      if ((d != null) && (d.d)) {
        ((List)localObject).addAll(d.u);
      } else {
        i1 = 0;
      }
    }
  }
  
  void b(List<Callable<Void>> paramList)
  {
    if (m) {}
    for (;;)
    {
      return;
      k = new IdentityHashMap();
      Object localObject1 = new ArrayList();
      Iterator localIterator = i.iterator();
      Object localObject2;
      while (localIterator.hasNext())
      {
        localObject2 = (ias)localIterator.next();
        iat localiat = ((ias)localObject2).a(f, h);
        k.put(localObject2, localiat);
      }
      localIterator = k.values().iterator();
      while (localIterator.hasNext())
      {
        localObject2 = (iat)localIterator.next();
        if (localObject2 != null) {
          ((iat)localObject2).a(g, (List)localObject1);
        }
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        paramList.add(new ica(this, (ihi)((Iterator)localObject1).next()));
      }
    }
  }
}

/* Location:
 * Qualified Name:     ibz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */