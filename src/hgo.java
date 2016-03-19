import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public final class hgo
  extends hcv
  implements hft
{
  final Map<String, hfu> a = new ConcurrentHashMap();
  final List<hgn> b = new ArrayList();
  private final hge c;
  private final hcd d;
  private final hci e;
  private final hfo f;
  private final hbj g;
  private final hgs h = new hgs(this);
  private hfn i;
  
  public hgo(hcd paramhcd)
  {
    d = paramhcd;
    e = paramhcd.d();
    f = paramhcd.c();
    c = new hge(paramhcd);
    f.a(this);
    e.a(this);
    g = ((hbj)e.d().a(hbj.class));
    g.a(h);
  }
  
  private hfu b(String paramString)
  {
    hcs localhcs = e.a();
    if (localhcs == null)
    {
      hlk.a(5, "vclib", "Attempted to access remote video while not in a call");
      localObject = null;
    }
    hfu localhfu;
    do
    {
      return (hfu)localObject;
      localhfu = (hfu)a.get(paramString);
      localObject = localhfu;
    } while (localhfu != null);
    if (localhcs.b(paramString) == null)
    {
      hlk.a(4, "vclib", "Attempted to get remote source for a non-remote participant");
      return null;
    }
    Object localObject = new hfu(d, f.a(paramString));
    a.put(paramString, localObject);
    return (hfu)localObject;
  }
  
  public hgn a(String paramString)
  {
    hbs.b("Cannot get source of a null participant", paramString);
    if (("localParticipant".equals(paramString)) || (paramString.equals(f.d().a()))) {
      return c;
    }
    return b(paramString);
  }
  
  public void a()
  {
    Iterator localIterator = a.values().iterator();
    while (localIterator.hasNext()) {
      ((hfu)localIterator.next()).a();
    }
    a.clear();
    f.b(this);
    e.b(this);
    g.b(h);
    c.h();
  }
  
  public void a(hfn paramhfn)
  {
    if (paramhfn.d()) {}
    hfu localhfu;
    do
    {
      return;
      localhfu = b(paramhfn.a());
      hbs.b("Expected non-null", localhfu);
      paramhfn = String.valueOf(aal.A(paramhfn.a()));
      paramhfn = String.valueOf(paramhfn).length() + 11 + paramhfn + 2;
      paramhfn = (kja)g.b().get(paramhfn);
    } while (paramhfn == null);
    localhfu.a(paramhfn);
  }
  
  void a(hgn paramhgn)
  {
    int j = 0;
    int k = b.size();
    for (;;)
    {
      if (j < k)
      {
        if (paramhgn.equals(b.get(j))) {
          b.remove(j);
        }
      }
      else {
        return;
      }
      j += 1;
    }
  }
  
  public void a(hil paramhil, atn paramatn)
  {
    int j = 0;
    if ((paramhil.k()) || (!a.containsKey(paramhil.a()))) {}
    hfu localhfu;
    do
    {
      do
      {
        return;
        localhfu = b(paramhil.a());
        if (!(paramatn instanceof hiq)) {
          break;
        }
        paramatn = (hiq)paramatn;
        if (a == 3)
        {
          if (paramhil.m().isEmpty()) {}
          for (;;)
          {
            localhfu.b(j);
            return;
            j = ((Integer)paramhil.m().get(0)).intValue();
          }
        }
      } while (a != 2);
      localhfu.b(((Integer)paramhil.m().get(0)).intValue());
      return;
    } while (!(paramatn instanceof his));
    localhfu.a(paramhil.o());
  }
  
  public void a(hla paramhla, Runnable paramRunnable)
  {
    int k = b.size();
    int j = 0;
    hgn localhgn;
    if (j < k)
    {
      localhgn = (hgn)b.get(j);
      if (paramhla.equals(localhgn.o()))
      {
        label46:
        if (localhgn == null) {
          break label105;
        }
        hlk.a(3, "vclib", "unbindVideoFromSurface start source=%s, surface=%s", new Object[] { localhgn, paramhla });
        localhgn.a(paramhla, new hgq(this, localhgn, paramhla, paramRunnable));
      }
    }
    label105:
    while (paramRunnable == null)
    {
      return;
      j += 1;
      break;
      localhgn = null;
      break label46;
    }
    aal.a(paramRunnable);
  }
  
  public void a(String paramString, hla paramhla)
  {
    hbs.b("bindVideoToSurface requires a valid participantId", paramString);
    if (("localParticipant".equals(paramString)) || (paramString.equals(f.d().a()))) {}
    for (Object localObject = c; localObject == null; localObject = (hgn)a.get(paramString))
    {
      hlk.a(5, "vclib", String.valueOf(paramString).length() + 90 + "Attempted to bind video for participant: " + paramString + " but there is no VideoSource for this participant");
      return;
    }
    paramString = new hgp(this, (hgn)localObject, paramhla);
    if (paramhla.equals(((hgn)localObject).o()))
    {
      paramString.run();
      return;
    }
    a(paramhla, paramString);
  }
  
  public hge b()
  {
    return c;
  }
  
  public void b(hfn paramhfn)
  {
    if (paramhfn.d()) {
      return;
    }
    aal.a(new hgr(this, paramhfn));
  }
  
  public void c(hfn paramhfn)
  {
    if (i != null)
    {
      hfu localhfu = (hfu)a.get(i.a());
      if (localhfu != null) {
        localhfu.b(false);
      }
    }
    i = paramhfn;
    paramhfn = (hfu)a.get(i.a());
    if (paramhfn != null) {
      paramhfn.b(true);
    }
  }
}

/* Location:
 * Qualified Name:     hgo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */