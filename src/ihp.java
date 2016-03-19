import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class ihp
{
  private final hq<String, ihq> a = new hq();
  private ihq b;
  private long c;
  private long d;
  private long e;
  private long f;
  
  public void a()
  {
    d = System.currentTimeMillis();
  }
  
  public void a(iht paramiht)
  {
    ihq localihq = b;
    e += paramiht.a();
    localihq = b;
    f += paramiht.b();
    localihq = b;
    d += paramiht.e();
    b.i = paramiht.c();
    b.g = paramiht.f();
    b.h.a(paramiht.g());
  }
  
  public void a(String paramString)
  {
    Object localObject = new ArrayList(a.keySet());
    Collections.sort((List)localObject);
    localObject = ((ArrayList)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      String str = (String)((Iterator)localObject).next();
      str = String.valueOf(a.get(str));
      new StringBuilder(String.valueOf(paramString).length() + 0 + String.valueOf(str).length()).append(paramString).append(str);
    }
  }
  
  public void a(String paramString, String[] paramArrayOfString)
  {
    b = ((ihq)a.get(paramString));
    if (b == null)
    {
      b = new ihq();
      b.a = paramString;
      b.j = paramArrayOfString;
      a.put(paramString, b);
    }
    c = System.currentTimeMillis();
    e = 0L;
  }
  
  public String[] b()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = a.values().iterator();
    while (localIterator.hasNext()) {
      Collections.addAll(localArrayList, nextj);
    }
    return (String[])localArrayList.toArray(new String[localArrayList.size()]);
  }
  
  public void c()
  {
    e = System.currentTimeMillis();
  }
  
  public void d()
  {
    if (e != 0L)
    {
      localihq = b;
      c += System.currentTimeMillis() - e;
      e = 0L;
    }
    f = System.currentTimeMillis();
    ihq localihq = b;
    b += System.currentTimeMillis() - c;
  }
  
  public long e()
  {
    Iterator localIterator = new ArrayList(a.keySet()).iterator();
    String str;
    for (long l = 0L; localIterator.hasNext(); l = a.get(str)).e + l) {
      str = (String)localIterator.next();
    }
    return l;
  }
  
  public long f()
  {
    return c;
  }
  
  public long g()
  {
    return f;
  }
  
  public long h()
  {
    return d;
  }
  
  public long i()
  {
    Iterator localIterator = new ArrayList(a.keySet()).iterator();
    String str;
    for (long l = 0L; localIterator.hasNext(); l = a.get(str)).f + l) {
      str = (String)localIterator.next();
    }
    return l;
  }
  
  public long j()
  {
    return b.g;
  }
  
  public hq<String, Long> k()
  {
    return b.h;
  }
}

/* Location:
 * Qualified Name:     ihp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */