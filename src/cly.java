import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class cly
  extends hbn
{
  cly(clu paramclu) {}
  
  public void a()
  {
    a.n = true;
    Object localObject1 = a.j.b().values().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (khk)((Iterator)localObject1).next();
      if (aal.a(q, 0) == 10) {
        a.g.put(b, localObject2);
      }
    }
    a.l = a.j.a();
    hbs.b("Expected non-null", a.l);
    localObject1 = a;
    boolean bool = o;
    o = false;
    if ((n) && (l != null) && (l.s != null))
    {
      localObject2 = l.s;
      int j = localObject2.length;
      int i = 0;
      while (i < j)
      {
        if (localObject2[i] == 1) {
          o = true;
        }
        i += 1;
      }
    }
    if (bool != o)
    {
      localObject2 = h.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((clm)((Iterator)localObject2).next()).a();
      }
      ((clu)localObject1).c();
    }
    ezi.a("Babel", String.format("Found %d pending knocks on collection synced", new Object[] { Integer.valueOf(a.g.size()) }), new Object[0]);
    a.c();
  }
}

/* Location:
 * Qualified Name:     cly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */