import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

final class hfs
  extends hcv
{
  hfs(hfo paramhfo) {}
  
  public void a(hil arg1, atn arg2)
  {
    Object localObject = a;
    if (((??? instanceof hin)) || ((??? instanceof hik))) {
      if ((???.j()) && (!h.containsKey(???.a()))) {
        i = 1;
      }
    }
    while (i != 0)
    {
      if (???.k())
      {
        ??? = a.l;
        localObject = ???.b();
        ((hkx)localObject).f();
        ((hkx)localObject).h(???.r());
        ((hkx)localObject).i(???.t());
        ???.a(???);
        a.a(???);
        hlk.a(3, "vclib", "Participant joined: %s", new Object[] { ???.a() });
      }
      synchronized (a.f)
      {
        a.h.put(???.a(), ???);
        a.i.add(???);
        a.f();
        ??? = a.e.iterator();
        while (???.hasNext()) {
          ((hft)???.next()).a(???);
        }
        i = 0;
        continue;
        i = 0;
        continue;
        ??? = new hfn(a.a);
      }
    }
    if ((??? instanceof hio)) {
      synchronized (a.f)
      {
        ??? = (hfn)a.h.remove(???.a());
        if (??? == null) {
          return;
        }
        a.k.add(???);
        a.f();
        if (??? == a.m) {
          a.b(null);
        }
        ??? = a.e.iterator();
        if (!???.hasNext()) {
          break label439;
        }
        ((hft)???.next()).b(???);
      }
    }
    if (((??? instanceof hij)) || ((??? instanceof hiq)) || ((??? instanceof his))) {}
    for (int i = 1;; i = 0)
    {
      if (i != 0)
      {
        ??? = (hfn)a.h.get(???.a());
        if (??? != null) {
          ???.e();
        }
      }
      label439:
      a.e();
      return;
    }
  }
  
  public void a(String paramString, int paramInt)
  {
    paramString = a.n;
    a.n = null;
    Iterator localIterator = a.c.a().l().iterator();
    while (localIterator.hasNext())
    {
      hil localhil = (hil)localIterator.next();
      if (localhil.l().contains(Integer.valueOf(paramInt))) {
        a.n = ((hfn)a.h.get(localhil.a()));
      }
    }
    if (a.n != paramString)
    {
      a.a(paramString);
      a.a(a.n);
      a.e();
    }
  }
  
  public void b(hcs arg1)
  {
    a.c.b(a.d);
    synchronized (a.f)
    {
      a.q = true;
      a.g = false;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hfs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */