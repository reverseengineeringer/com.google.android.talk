import java.util.List;
import java.util.Map;

final class hfn
{
  private final hcd a;
  private final hkx b;
  private final hbh c;
  private hil d;
  
  hfn(hcd paramhcd)
  {
    a = paramhcd;
    c = ((hbh)paramhcd.q().a(hbh.class));
    b = new hkx();
  }
  
  private void f()
  {
    boolean bool2 = true;
    if (d())
    {
      localObject1 = a.m();
      localObject2 = b;
      boolean bool1;
      if ((localObject1 == null) || (!((hlb)localObject1).g()))
      {
        bool1 = true;
        ((hkx)localObject2).b(bool1);
        if (d != null) {
          break label136;
        }
        localObject1 = a.n();
        localObject2 = b;
        bool1 = bool2;
        if (localObject1 != null)
        {
          if (((hkq)localObject1).b()) {
            break label131;
          }
          bool1 = bool2;
        }
        label92:
        ((hkx)localObject2).a(bool1);
      }
      for (;;)
      {
        b.g(false);
        b.a(c.a());
        return;
        bool1 = false;
        break;
        label131:
        bool1 = false;
        break label92;
        label136:
        b.a(d.n());
      }
    }
    b.b(d.o());
    b.a(d.n());
    Object localObject2 = c.a();
    Object localObject1 = (khk)c.b().get(d.a());
    int i;
    if ((localObject2 != null) && (localObject1 != null))
    {
      localObject2 = h;
      int j = localObject2.length;
      i = 0;
      if (i < j)
      {
        if (!a.equals(c)) {
          break label320;
        }
        b.g(true);
      }
    }
    localObject2 = d.m();
    if ((localObject2 == null) || (((List)localObject2).isEmpty())) {
      b.a(0);
    }
    for (;;)
    {
      b.a((khk)localObject1);
      return;
      label320:
      i += 1;
      break;
      b.a(((Integer)((List)localObject2).get(0)).intValue());
    }
  }
  
  public String a()
  {
    return b.a();
  }
  
  void a(hil paramhil)
  {
    d = paramhil;
    b.a(paramhil.a());
    b.b(paramhil.b());
    b.c(paramhil.c());
    b.a(paramhil.g());
    if ((paramhil instanceof hip)) {
      b.d(((hip)paramhil).u());
    }
    b.f(paramhil instanceof hir);
    f();
  }
  
  public hkx b()
  {
    return b;
  }
  
  public hil c()
  {
    return d;
  }
  
  public boolean d()
  {
    if (d == null) {
      return true;
    }
    return d.k();
  }
  
  public void e()
  {
    f();
    a.c().b(this);
  }
}

/* Location:
 * Qualified Name:     hfn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */