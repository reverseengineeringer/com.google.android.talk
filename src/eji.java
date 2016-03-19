import android.text.TextUtils;
import java.security.MessageDigest;
import java.util.Iterator;

public final class eji
  implements gpr
{
  private final String a;
  private final String b;
  private final Iterable<Long> c;
  private final Iterable<gps> d;
  private final Iterable<gpy> e;
  private final String f;
  private final boolean g;
  private final String h;
  private final String i;
  private final String[] j;
  
  public eji(gpr paramgpr)
  {
    a = paramgpr.a();
    b = paramgpr.j();
    c = paramgpr.b();
    d = paramgpr.P_();
    e = paramgpr.d();
    f = paramgpr.e();
    g = paramgpr.f();
    h = paramgpr.g();
    Object localObject = null;
    try
    {
      String str = paramgpr.h();
      localObject = str;
    }
    catch (NullPointerException localNullPointerException)
    {
      for (;;)
      {
        ezi.c("Babel", "Caught NPE in getAvatarUrl", localNullPointerException);
      }
    }
    i = ((String)localObject);
    j = paramgpr.i();
  }
  
  private static void a(MessageDigest paramMessageDigest, String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      paramMessageDigest.update(paramString.getBytes());
    }
  }
  
  public Iterable<gps> P_()
  {
    return d;
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    int m = 0;
    a(paramMessageDigest, a());
    a(paramMessageDigest, j());
    Object localObject1 = c.iterator();
    Object localObject2;
    int k;
    while (((Iterator)localObject1).hasNext())
    {
      long l = aal.a((Long)((Iterator)localObject1).next(), 0L);
      localObject2 = new byte[8];
      k = 7;
      while (k >= 0)
      {
        localObject2[k] = ((byte)(int)(0xFF & l));
        l >>= 8;
        k -= 1;
      }
      paramMessageDigest.update((byte[])localObject2);
    }
    localObject1 = P_().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (gps)((Iterator)localObject1).next();
      a(paramMessageDigest, ((gps)localObject2).a());
      a(paramMessageDigest, ((gps)localObject2).b());
    }
    localObject1 = d().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (gpy)((Iterator)localObject1).next();
      a(paramMessageDigest, ((gpy)localObject2).a());
      a(paramMessageDigest, ((gpy)localObject2).b());
    }
    a(paramMessageDigest, f);
    if (g) {}
    for (byte b1 = 1;; b1 = 0)
    {
      paramMessageDigest.update(b1);
      a(paramMessageDigest, h);
      a(paramMessageDigest, i);
      localObject1 = j;
      int n = localObject1.length;
      k = m;
      while (k < n)
      {
        a(paramMessageDigest, localObject1[k]);
        k += 1;
      }
    }
  }
  
  public Iterable<Long> b()
  {
    return c;
  }
  
  public Iterable<gpy> d()
  {
    return e;
  }
  
  public String e()
  {
    return f;
  }
  
  public boolean f()
  {
    return g;
  }
  
  public String g()
  {
    return h;
  }
  
  public String h()
  {
    return i;
  }
  
  public String[] i()
  {
    return j;
  }
  
  public String j()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     eji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */