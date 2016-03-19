import android.content.Context;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class hiv
{
  final Context a;
  final hks b;
  private final Map<String, hiw> c = new HashMap();
  
  public hiv(Context paramContext, hks paramhks)
  {
    a = paramContext;
    b = paramhks;
  }
  
  private hiw c()
  {
    hbs.a();
    Object localObject = b.l().a();
    if (localObject == null) {}
    for (localObject = null;; localObject = ((hkt)localObject).n())
    {
      hiw localhiw2 = (hiw)c.get(localObject);
      hiw localhiw1 = localhiw2;
      if (localhiw2 == null)
      {
        localhiw1 = new hiw(this);
        c.put(localObject, localhiw1);
      }
      return localhiw1;
    }
  }
  
  fgr a()
  {
    Object localObject = b.l().a();
    Context localContext = a;
    if (localObject == null) {}
    for (localObject = null;; localObject = ((hkt)localObject).n()) {
      return new fgr(localContext, "HANGOUT_LOG_REQUEST", (String)localObject);
    }
  }
  
  public void a(int paramInt)
  {
    hbs.a();
    c().b(paramInt);
  }
  
  public void a(long paramLong, int paramInt1, int paramInt2)
  {
    hbs.a();
    c().a(paramLong, paramInt1, paramInt2);
  }
  
  public void b()
  {
    Iterator localIterator = c.values().iterator();
    while (localIterator.hasNext()) {
      ((hiw)localIterator.next()).a();
    }
  }
}

/* Location:
 * Qualified Name:     hiv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */