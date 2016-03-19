import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

final class hfp
  implements Runnable
{
  hfp(hfo paramhfo) {}
  
  public void run()
  {
    boolean bool;
    synchronized (a.f)
    {
      if ((!a.g) || (a.q)) {
        return;
      }
      a.g = false;
      Object localObject4 = new LinkedHashSet(a.i);
      localObject2 = new LinkedHashSet(a.j);
      LinkedHashSet localLinkedHashSet = new LinkedHashSet(a.k);
      a.i.clear();
      a.j.clear();
      a.k.clear();
      bool = a.p;
      a.p = false;
      ((Set)localObject2).removeAll((Collection)localObject4);
      ((Set)localObject2).removeAll(localLinkedHashSet);
      ??? = ((Set)localObject4).iterator();
      if (((Iterator)???).hasNext())
      {
        localObject4 = (hfn)((Iterator)???).next();
        a.b.a(((hfn)localObject4).b());
      }
    }
    Object localObject2 = ((Set)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      ??? = (hfn)((Iterator)localObject2).next();
      if (a.h.containsKey(((hfn)???).a())) {
        a.b.c(((hfn)???).b());
      }
    }
    Iterator localIterator = ((Set)localObject1).iterator();
    while (localIterator.hasNext())
    {
      localObject2 = (hfn)localIterator.next();
      a.b.b(((hfn)localObject2).b());
    }
    if (bool)
    {
      hbs.b("Expected non-null", a.o);
      a.b.d(a.o.b());
    }
  }
}

/* Location:
 * Qualified Name:     hfp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */