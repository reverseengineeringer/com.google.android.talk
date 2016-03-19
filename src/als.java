import java.io.File;
import java.util.List;

final class als
  implements ajg<Object>, ake
{
  private final akf a;
  private final akg<?> b;
  private int c = 0;
  private int d = -1;
  private aiw e;
  private List<apg<File, ?>> f;
  private int g;
  private volatile aph<?> h;
  private File i;
  private alt j;
  
  public als(akg<?> paramakg, akf paramakf)
  {
    b = paramakg;
    a = paramakf;
  }
  
  private boolean c()
  {
    return g < f.size();
  }
  
  public void a(Exception paramException)
  {
    a.a(j, paramException, h.c, air.d);
  }
  
  public void a(Object paramObject)
  {
    a.a(e, paramObject, h.c, air.d, j);
  }
  
  public boolean a()
  {
    List localList1 = b.k();
    boolean bool2;
    if (localList1.isEmpty()) {
      bool2 = false;
    }
    boolean bool1;
    do
    {
      do
      {
        return bool2;
        List localList2 = b.i();
        while ((f == null) || (!c()))
        {
          d += 1;
          if (d >= localList2.size())
          {
            c += 1;
            if (c >= localList1.size()) {
              return false;
            }
            d = 0;
          }
          aiw localaiw = (aiw)localList1.get(c);
          Class localClass = (Class)localList2.get(d);
          ajd localajd = b.c(localClass);
          j = new alt(localaiw, b.f(), b.g(), b.h(), localajd, localClass, b.e());
          i = b.b().a(j);
          if (i != null)
          {
            e = localaiw;
            f = b.a(i);
            g = 0;
          }
        }
        h = null;
        bool1 = false;
        bool2 = bool1;
      } while (bool1);
      bool2 = bool1;
    } while (!c());
    localList1 = f;
    int k = g;
    g = (k + 1);
    h = ((apg)localList1.get(k)).a(i, b.g(), b.h(), b.e());
    if ((h != null) && (b.a(h.c.d())))
    {
      bool1 = true;
      h.c.a(b.d(), this);
    }
    for (;;)
    {
      break;
    }
  }
  
  public void b()
  {
    aph localaph = h;
    if (localaph != null) {
      c.b();
    }
  }
}

/* Location:
 * Qualified Name:     als
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */