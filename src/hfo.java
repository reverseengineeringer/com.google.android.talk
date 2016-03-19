import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

final class hfo
{
  final hcd a;
  final hku b;
  final hci c;
  final hfs d;
  final List<hft> e = new CopyOnWriteArrayList();
  final Object f = new Object();
  boolean g = false;
  public final Map<String, hfn> h = new LinkedHashMap();
  final Set<hfn> i = new LinkedHashSet();
  final Set<hfn> j = new LinkedHashSet();
  final Set<hfn> k = new LinkedHashSet();
  final hfn l;
  hfn m;
  hfn n;
  hfn o;
  boolean p;
  boolean q;
  private final Runnable r = new hfp(this);
  
  hfo(hcd paramhcd)
  {
    a = paramhcd;
    b = paramhcd.j();
    c = paramhcd.d();
    ((hbh)paramhcd.q().a(hbh.class)).a(new hfr(this));
    d = new hfs(this);
    c.a(d);
    l = new hfn(paramhcd);
  }
  
  public hfn a(String paramString)
  {
    return (hfn)h.get(paramString);
  }
  
  public void a()
  {
    c.b(d);
  }
  
  void a(hfn paramhfn)
  {
    boolean bool2 = true;
    hkx localhkx;
    if (paramhfn != null)
    {
      localhkx = paramhfn.b();
      if (paramhfn != n) {
        break label74;
      }
      bool1 = true;
      localhkx.c(bool1);
      localhkx.j();
      if (paramhfn != m) {
        break label79;
      }
      bool1 = true;
      label45:
      localhkx.d(bool1);
      if (paramhfn != o) {
        break label84;
      }
    }
    label74:
    label79:
    label84:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localhkx.e(bool1);
      paramhfn.e();
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label45;
    }
  }
  
  public void a(hft paramhft)
  {
    e.add(paramhft);
  }
  
  public List<hfn> b()
  {
    return new ArrayList(h.values());
  }
  
  void b(hfn paramhfn)
  {
    synchronized (f)
    {
      j.add(paramhfn);
      f();
      return;
    }
  }
  
  public void b(hft paramhft)
  {
    e.remove(paramhft);
  }
  
  public void b(String paramString)
  {
    hfn localhfn = m;
    if (paramString == null) {}
    for (paramString = null;; paramString = (hfn)h.get(paramString))
    {
      m = paramString;
      if (localhfn != m)
      {
        a(localhfn);
        a(m);
        e();
      }
      return;
    }
  }
  
  public hfn c()
  {
    return o;
  }
  
  public hfn d()
  {
    return l;
  }
  
  public void e()
  {
    ??? = o;
    o = null;
    if (m != null) {
      o = m;
    }
    for (;;)
    {
      if (o == null) {
        o = l;
      }
      if (??? != o)
      {
        a((hfn)???);
        a(o);
        synchronized (f)
        {
          p = true;
          f();
          ??? = e.iterator();
          for (;;)
          {
            if (((Iterator)???).hasNext())
            {
              ((hft)((Iterator)???).next()).c(o);
              continue;
              if ((n != null) && (!n.d()))
              {
                o = n;
                break;
              }
              if ((??? != null) && (!((hfn)???).d()) && (h.containsKey(((hfn)???).a())))
              {
                o = ((hfn)???);
                break;
              }
              Iterator localIterator = h.values().iterator();
              hfn localhfn;
              do
              {
                if (!localIterator.hasNext()) {
                  break;
                }
                localhfn = (hfn)localIterator.next();
              } while (localhfn.d());
              o = localhfn;
            }
          }
        }
      }
    }
  }
  
  void f()
  {
    synchronized (f)
    {
      if (q) {
        return;
      }
      if (!g)
      {
        g = true;
        aal.b(r);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */