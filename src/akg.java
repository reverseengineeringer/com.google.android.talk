import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

final class akg<Transcode>
{
  private final List<aph<?>> a = new ArrayList();
  private final List<aiw> b = new ArrayList();
  private ahm c;
  private Object d;
  private int e;
  private int f;
  private Class<?> g;
  private akl h;
  private aja i;
  private Map<Class<?>, ajd<?>> j;
  private Class<Transcode> k;
  private boolean l;
  private boolean m;
  private aiw n;
  private ahs o;
  private akr p;
  private boolean q;
  
  <X> aiu<X> a(X paramX)
  {
    return c.c().a(paramX);
  }
  
  <R> akg<R> a(ahm paramahm, Object paramObject, aiw paramaiw, int paramInt1, int paramInt2, akr paramakr, Class<?> paramClass, Class<R> paramClass1, ahs paramahs, aja paramaja, Map<Class<?>, ajd<?>> paramMap, boolean paramBoolean, akl paramakl)
  {
    c = paramahm;
    d = paramObject;
    n = paramaiw;
    e = paramInt1;
    f = paramInt2;
    p = paramakr;
    g = paramClass;
    h = paramakl;
    k = paramClass1;
    o = paramahs;
    i = paramaja;
    j = paramMap;
    q = paramBoolean;
    return this;
  }
  
  List<apg<File, ?>> a(File paramFile)
  {
    return c.c().c(paramFile);
  }
  
  void a()
  {
    c = null;
    d = null;
    n = null;
    g = null;
    k = null;
    i = null;
    o = null;
    j = null;
    p = null;
    a.clear();
    l = false;
    b.clear();
    m = false;
  }
  
  boolean a(aiw paramaiw)
  {
    List localList = j();
    int i2 = localList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      if (geta.equals(paramaiw)) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  boolean a(alr<?> paramalr)
  {
    return c.c().a(paramalr);
  }
  
  boolean a(Class<?> paramClass)
  {
    return b(paramClass) != null;
  }
  
  <Z> ajc<Z> b(alr<Z> paramalr)
  {
    return c.c().b(paramalr);
  }
  
  <Data> alo<Data, ?, Transcode> b(Class<Data> paramClass)
  {
    return c.c().a(paramClass, g, k);
  }
  
  amu b()
  {
    return h.a();
  }
  
  <Z> ajd<Z> c(Class<Z> paramClass)
  {
    ajd localajd = (ajd)j.get(paramClass);
    Object localObject = localajd;
    if (localajd == null)
    {
      if ((j.isEmpty()) && (q))
      {
        paramClass = String.valueOf(paramClass);
        throw new IllegalArgumentException(String.valueOf(paramClass).length() + 115 + "Missing transformation for " + paramClass + ". If you wish to ignore unknown resource types, use the optional transformation methods.");
      }
      localObject = (aqt)aqt.b;
    }
    return (ajd<Z>)localObject;
  }
  
  akr c()
  {
    return p;
  }
  
  ahs d()
  {
    return o;
  }
  
  aja e()
  {
    return i;
  }
  
  aiw f()
  {
    return n;
  }
  
  int g()
  {
    return e;
  }
  
  int h()
  {
    return f;
  }
  
  List<Class<?>> i()
  {
    return c.c().b(d.getClass(), g, k);
  }
  
  List<aph<?>> j()
  {
    if (!l)
    {
      l = true;
      a.clear();
      List localList = c.c().c(d);
      int i2 = localList.size();
      int i1 = 0;
      while (i1 < i2)
      {
        aph localaph = ((apg)localList.get(i1)).a(d, e, f, i);
        if (localaph != null) {
          a.add(localaph);
        }
        i1 += 1;
      }
    }
    return a;
  }
  
  List<aiw> k()
  {
    if (!m)
    {
      m = true;
      b.clear();
      List localList = j();
      int i2 = localList.size();
      int i1 = 0;
      while (i1 < i2)
      {
        aph localaph = (aph)localList.get(i1);
        b.add(a);
        b.addAll(b);
        i1 += 1;
      }
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     akg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */