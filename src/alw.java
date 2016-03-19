import android.util.Log;
import java.util.Collections;
import java.util.List;

final class alw
  implements ajg<Object>, ake, akf
{
  private final akg<?> a;
  private final akf b;
  private int c;
  private akc d;
  private Object e;
  private volatile aph<?> f;
  private akd g;
  
  public alw(akg<?> paramakg, akf paramakf)
  {
    a = paramakg;
    b = paramakf;
  }
  
  public void a(aiw paramaiw, Exception paramException, ajf<?> paramajf, air paramair)
  {
    b.a(paramaiw, paramException, paramajf, f.c.c());
  }
  
  public void a(aiw paramaiw1, Object paramObject, ajf<?> paramajf, air paramair, aiw paramaiw2)
  {
    b.a(paramaiw1, paramObject, paramajf, f.c.c(), paramaiw1);
  }
  
  public void a(Exception paramException)
  {
    b.a(g, paramException, f.c, f.c.c());
  }
  
  public void a(Object paramObject)
  {
    akr localakr = a.c();
    if ((paramObject != null) && (localakr.a(f.c.c())))
    {
      e = paramObject;
      b.c();
      return;
    }
    b.a(f.a, paramObject, f.c, f.c.c(), g);
  }
  
  public boolean a()
  {
    Object localObject4;
    long l;
    if (e != null)
    {
      localObject4 = e;
      e = null;
      l = avm.a();
    }
    try
    {
      Object localObject1 = a.a(localObject4);
      Object localObject3 = new amw((aiu)localObject1, localObject4, a.e());
      g = new akd(f.a, a.f());
      a.b().a(g, (amw)localObject3);
      if (Log.isLoggable("SourceGenerator", 2))
      {
        localObject3 = String.valueOf("Finished encoding source to cache, key: ");
        String str = String.valueOf(g);
        localObject4 = String.valueOf(localObject4);
        localObject1 = String.valueOf(localObject1);
        double d1 = avm.a(l);
        new StringBuilder(String.valueOf(localObject3).length() + 55 + String.valueOf(str).length() + String.valueOf(localObject4).length() + String.valueOf(localObject1).length()).append((String)localObject3).append(str).append(", data: ").append((String)localObject4).append(", encoder: ").append((String)localObject1).append(", duration: ").append(d1);
      }
      f.c.a();
      d = new akc(Collections.singletonList(f.a), a, this);
      if ((d != null) && (d.a())) {
        return true;
      }
    }
    finally
    {
      f.c.a();
    }
    d = null;
    f = null;
    boolean bool = false;
    if (!bool)
    {
      if (c < a.j().size()) {}
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label465;
        }
        List localList = a.j();
        i = c;
        c = (i + 1);
        f = ((aph)localList.get(i));
        if ((f == null) || ((!a.c().a(f.c.c())) && (!a.a(f.c.d())))) {
          break;
        }
        f.c.a(a.d(), this);
        bool = true;
        break;
      }
    }
    label465:
    return bool;
  }
  
  public void b()
  {
    aph localaph = f;
    if (localaph != null) {
      c.b();
    }
  }
  
  public void c()
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     alw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */