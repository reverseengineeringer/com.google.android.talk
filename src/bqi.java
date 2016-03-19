import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

final class bqi
  implements bjc
{
  private List<bjb> a;
  private bjb b;
  private List<bjd> c = new ArrayList();
  private List<bje> d;
  private czb e;
  private final Map<String, List<cyx>> f = new hq();
  
  private void g()
  {
    Iterator localIterator = new ArrayList(c).iterator();
    while (localIterator.hasNext()) {
      ((bjd)localIterator.next()).a(a, b);
    }
  }
  
  public int a()
  {
    return f().size();
  }
  
  public bqi a(ilh paramilh)
  {
    paramilh.a(bjc.class, this);
    return this;
  }
  
  List<cyx> a(String paramString)
  {
    List localList = (List)f.get(paramString);
    Object localObject = localList;
    if (localList == null)
    {
      localObject = new ArrayList();
      f.put(paramString, localObject);
    }
    return (List<cyx>)localObject;
  }
  
  public void a(bjb parambjb)
  {
    hbs.a("Expected condition to be true", a.contains(parambjb));
    if (b == parambjb) {}
    for (;;)
    {
      return;
      b = parambjb;
      parambjb = new ArrayList(c).iterator();
      while (parambjb.hasNext()) {
        ((bjd)parambjb.next()).a(b);
      }
    }
  }
  
  public void a(bjd parambjd)
  {
    c.add(parambjd);
    if (a != null) {
      parambjd.a(a, b);
    }
  }
  
  public void a(bje parambje)
  {
    if (a != null)
    {
      parambje.a(b);
      return;
    }
    if (d == null) {
      d = new ArrayList();
    }
    d.add(parambje);
  }
  
  void a(czb paramczb)
  {
    e = paramczb;
  }
  
  public void a(String paramString1, String paramString2)
  {
    int i = 0;
    aen.a(a);
    int j;
    if ((b != null) && (TextUtils.equals(b.a, paramString1)))
    {
      j = 1;
      if (i >= a.size()) {
        break label166;
      }
      bjb localbjb = (bjb)a.get(i);
      if (!TextUtils.equals(a, paramString1)) {
        break label159;
      }
      paramString1 = localbjb;
    }
    for (;;)
    {
      if (paramString1 != null)
      {
        paramString1 = new bjb(paramString2, b, h, c, d, e, f, i, j, g);
        a.set(i, paramString1);
        if (j != 0) {
          a(paramString1);
        }
        g();
      }
      return;
      j = 0;
      break;
      label159:
      i += 1;
      break;
      label166:
      paramString1 = null;
      i = -1;
    }
  }
  
  void a(List<bjb> paramList, bjb parambjb)
  {
    if (a == null) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      a = paramList;
      b = parambjb;
      g();
      if (d == null) {
        break;
      }
      paramList = d.iterator();
      while (paramList.hasNext()) {
        ((bje)paramList.next()).a(parambjb);
      }
    }
    d = null;
  }
  
  public String b()
  {
    Collection localCollection = f();
    if (a() == 1) {
      return iteratornextc;
    }
    return null;
  }
  
  public void b(bjd parambjd)
  {
    c.remove(parambjd);
  }
  
  public void c()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((bjd)localIterator.next()).a();
    }
  }
  
  List<bjb> d()
  {
    return a;
  }
  
  void e()
  {
    f.clear();
  }
  
  Collection<cyx> f()
  {
    Object localObject1 = b.a;
    Object localObject2 = (List)f.get(localObject1);
    if (localObject2 == null) {
      return Collections.emptyList();
    }
    localObject1 = new ArrayList();
    localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      cyx localcyx = (cyx)((Iterator)localObject2).next();
      if (!e.a(b)) {
        ((Collection)localObject1).add(localcyx);
      }
    }
    return (Collection<cyx>)localObject1;
  }
}

/* Location:
 * Qualified Name:     bqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */