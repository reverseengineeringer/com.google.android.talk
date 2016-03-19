import java.io.File;
import java.util.List;

final class akc
  implements ajg<Object>, ake
{
  private List<aiw> a;
  private final akg<?> b;
  private final akf c;
  private int d = -1;
  private aiw e;
  private List<apg<File, ?>> f;
  private int g;
  private volatile aph<?> h;
  private File i;
  
  akc(akg<?> paramakg, akf paramakf)
  {
    this(paramakg.k(), paramakg, paramakf);
  }
  
  akc(List<aiw> paramList, akg<?> paramakg, akf paramakf)
  {
    a = paramList;
    b = paramakg;
    c = paramakf;
  }
  
  private boolean c()
  {
    return g < f.size();
  }
  
  public void a(Exception paramException)
  {
    c.a(e, paramException, h.c, air.c);
  }
  
  public void a(Object paramObject)
  {
    c.a(e, paramObject, h.c, air.c, e);
  }
  
  public boolean a()
  {
    boolean bool1 = false;
    boolean bool2 = false;
    if ((f == null) || (!c()))
    {
      d += 1;
      if (d < a.size()) {}
    }
    do
    {
      do
      {
        return bool2;
        localObject = (aiw)a.get(d);
        akd localakd = new akd((aiw)localObject, b.f());
        i = b.b().a(localakd);
        if (i == null) {
          break;
        }
        e = ((aiw)localObject);
        f = b.a(i);
        g = 0;
        break;
        h = null;
        bool2 = bool1;
      } while (bool1);
      bool2 = bool1;
    } while (!c());
    Object localObject = f;
    int j = g;
    g = (j + 1);
    h = ((apg)((List)localObject).get(j)).a(i, b.g(), b.h(), b.e());
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
 * Qualified Name:     akc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */