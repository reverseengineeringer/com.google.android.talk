import android.os.Handler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class cii
{
  private final cgw a;
  private final boolean b;
  private final List<cyx> c;
  private long d;
  private final ArrayList<cyx> e;
  private cik f;
  private final Handler g = new Handler();
  private final Runnable h = new cij(this);
  
  cii(cgw paramcgw, boolean paramBoolean, List<cyx> paramList)
  {
    Iterator localIterator = paramList.iterator();
    if (localIterator.hasNext())
    {
      cyx localcyx = (cyx)localIterator.next();
      if ((b.a != null) || (s != null)) {}
      for (boolean bool = true;; bool = false)
      {
        hbs.a("Expected condition to be true", bool);
        break;
      }
    }
    a = paramcgw;
    b = paramBoolean;
    c = paramList;
    e = new ArrayList(paramList);
  }
  
  private static cyx a(hil paramhil, List<cyx> paramList)
  {
    cyx localcyx;
    if ((paramhil instanceof hip))
    {
      paramhil = (hip)paramhil;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localcyx = (cyx)paramList.next();
        if ((b.a != null) && (b.a.equals(paramhil.u()))) {
          return localcyx;
        }
      }
      return null;
    }
    if ((paramhil instanceof hir))
    {
      paramhil = (hir)paramhil;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        localcyx = (cyx)paramList.next();
        if ((b.a == null) && (aal.f(s, paramhil.u()))) {
          return localcyx;
        }
      }
      return null;
    }
    return null;
  }
  
  private boolean j()
  {
    return e.size() != 0;
  }
  
  private boolean k()
  {
    Iterator localIterator = e.iterator();
    while (localIterator.hasNext()) {
      if (nexta == czd.d) {
        return true;
      }
    }
    return false;
  }
  
  void a(hil paramhil, Integer paramInteger)
  {
    hbs.b("Expected condition to be false", paramhil.k());
    if (!paramhil.f()) {}
    do
    {
      do
      {
        return;
        paramhil = a(paramhil, e);
      } while (paramhil == null);
      e.remove(paramhil);
    } while (j());
    a(true, paramInteger);
  }
  
  void a(boolean paramBoolean, Integer paramInteger)
  {
    g.removeCallbacks(h);
    a.s().remove(this);
    i();
    boolean bool;
    cgw localcgw;
    int i;
    if ((a.H() == 0) && (!a.C()))
    {
      bool = true;
      if (bool)
      {
        localcgw = a;
        if (paramBoolean) {
          break label121;
        }
        i = 1010;
      }
    }
    for (;;)
    {
      localcgw.b(i);
      paramInteger = cfc.a().v().iterator();
      while (paramInteger.hasNext()) {
        ((hku)paramInteger.next()).b(bool);
      }
      bool = false;
      break;
      label121:
      if (aal.a(paramInteger, 0) == 7) {
        i = 1014;
      } else {
        i = 1011;
      }
    }
  }
  
  boolean a()
  {
    return b;
  }
  
  boolean a(hil paramhil)
  {
    return a(paramhil, e) != null;
  }
  
  List<cyx> b()
  {
    return c;
  }
  
  void b(hil paramhil)
  {
    if ((paramhil.k()) || (paramhil.e())) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.b("Expected condition to be false", bool);
      paramhil = a(paramhil, e);
      if (paramhil != null)
      {
        e.remove(paramhil);
        if (!j()) {
          a(false, null);
        }
        i();
      }
      if ((b) && (d == 0L)) {
        a(false, null);
      }
      return;
    }
  }
  
  long c()
  {
    return d;
  }
  
  List<cyx> d()
  {
    return e;
  }
  
  void e()
  {
    d = System.currentTimeMillis();
    if (b) {
      if (!k()) {
        h();
      }
    }
    for (;;)
    {
      if (!k()) {
        g.postDelayed(h, cgw.D());
      }
      return;
      Iterator localIterator = cfc.a().v().iterator();
      while (localIterator.hasNext()) {
        ((hku)localIterator.next()).d();
      }
    }
  }
  
  void f()
  {
    g.removeCallbacks(h);
    i();
  }
  
  void g()
  {
    g.removeCallbacks(h);
    i();
  }
  
  void h()
  {
    if (b)
    {
      if ((a.k()) && (f == null))
      {
        f = new cik(a.K());
        f.a();
      }
      Iterator localIterator = cfc.a().v().iterator();
      while (localIterator.hasNext()) {
        ((hku)localIterator.next()).i();
      }
    }
  }
  
  void i()
  {
    if (f != null)
    {
      f.b();
      f = null;
      if (b)
      {
        Iterator localIterator = cfc.a().v().iterator();
        while (localIterator.hasNext()) {
          ((hku)localIterator.next()).b();
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     cii
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */