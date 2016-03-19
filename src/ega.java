import android.text.TextUtils;
import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ega
  extends efo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  private final int d;
  private final String e;
  private final List<czb> f;
  private final List<dtl> g;
  private final List<dmo> h;
  private final String i;
  private final int j;
  private final int k;
  private final int[] l;
  private final czb m;
  private final dtl n;
  private final boolean o;
  private final int p;
  private final int q;
  private final long r;
  private final byte[] s;
  private final int t;
  private final Boolean u;
  private final boolean v;
  private final List<dmr> w;
  private long x;
  private dmr y;
  
  public ega(jxr paramjxr)
  {
    super(a.a, null, -1L);
    try
    {
      Object localObject1 = MessageDigest.getInstance("MD5");
      if (localObject1 != null)
      {
        ((MessageDigest)localObject1).update(jxr.a(paramjxr));
        s = ((MessageDigest)localObject1).digest();
        d = aal.a(c, 0);
        e = d;
        localObject1 = g;
        localObject3 = new ArrayList();
        int i2 = localObject1.length;
        i1 = 0;
        while (i1 < i2)
        {
          ((List)localObject3).add(new dtl(localObject1[i1]));
          i1 += 1;
        }
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      Object localObject3;
      int i1;
      Object localObject2;
      for (;;)
      {
        localObject2 = null;
        continue;
        s = null;
      }
      g = ((List)localObject3);
      h = dmo.a(l);
      f = aal.a(k, l);
      o = aal.a(h, false);
      p = aal.a(i, 0);
      q = aal.a(j, 1);
      if (f != null)
      {
        localObject3 = f;
        if (aal.a(b, 0L) != 0L)
        {
          localObject2 = bfz.a(aal.a(b, 0L));
          i = ((String)localObject2);
          j = aal.a(c, 0);
          k = aal.a(a, 0);
          if (d.length <= 0) {
            break label454;
          }
          localObject2 = d;
          label290:
          l = ((int[])localObject2);
          m = aal.a(e, null);
          if (g == null) {
            break label460;
          }
          localObject2 = new dtl(g);
          label331:
          n = ((dtl)localObject2);
          r = aal.a(h, 0L);
          x = aal.a(j, 0L);
          t = aal.a(k, 0);
          if (!aal.a(l, false)) {
            break label466;
          }
        }
        label454:
        label460:
        label466:
        for (localObject2 = Boolean.FALSE;; localObject2 = null)
        {
          u = ((Boolean)localObject2);
          v = aal.a(m, false);
          if (m.length != 1) {
            break label472;
          }
          w = null;
          y = new dmr(m[0].a);
          return;
          localObject2 = null;
          break;
          localObject2 = null;
          break label290;
          localObject2 = null;
          break label331;
        }
        label472:
        if (m.length > 1)
        {
          w = new ArrayList(m.length);
          i1 = 0;
          paramjxr = null;
          while (i1 < m.length)
          {
            localObject2 = new dmr(m[i1].a);
            w.add(localObject2);
            if ((paramjxr == null) || (aal.a(m[i1].b, false))) {
              paramjxr = (jxr)localObject2;
            }
            i1 += 1;
          }
          y = paramjxr;
          return;
        }
        w = null;
        y = null;
        return;
      }
      i = null;
      j = 30;
      k = 2;
      l = null;
      m = null;
      n = null;
      r = 0L;
      x = 0L;
      t = 2;
      u = null;
      v = false;
      w = null;
      y = null;
    }
  }
  
  public ega(jxr paramjxr, byte paramByte)
  {
    this(paramjxr);
  }
  
  public void a(long paramLong)
  {
    x = paramLong;
  }
  
  protected void a(bfz parambfz, dyy paramdyy)
  {
    if (!bft.a(parambfz.g(), this)) {
      aal.a(parambfz.g(), 1839);
    }
    for (;;)
    {
      return;
      parambfz.a();
      try
      {
        boolean bool = bft.a(parambfz, this, 0L, null, paramdyy, null, false);
        parambfz.b();
        parambfz.c();
        if (!bool) {
          continue;
        }
        bft.d(parambfz);
        return;
      }
      finally
      {
        parambfz.c();
      }
    }
  }
  
  public void b(String paramString)
  {
    Object localObject = h.iterator();
    while (((Iterator)localObject).hasNext()) {
      if (!TextUtils.isEmpty(nextb))
      {
        localObject = new jyp();
        a = Integer.valueOf(2);
        b = new lcf();
        b.a = paramString;
        y = new dmr((jyp)localObject);
      }
    }
  }
  
  public int d()
  {
    return d;
  }
  
  public String e()
  {
    return e;
  }
  
  public Boolean f()
  {
    return u;
  }
  
  public List<dtl> g()
  {
    return g;
  }
  
  public List<dmo> h()
  {
    return h;
  }
  
  public List<dmr> i()
  {
    return w;
  }
  
  public dmr j()
  {
    return y;
  }
  
  public List<czb> k()
  {
    return f;
  }
  
  public dtl l()
  {
    return n;
  }
  
  public boolean m()
  {
    return o;
  }
  
  public String n()
  {
    return i;
  }
  
  public int o()
  {
    return t;
  }
  
  public czb p()
  {
    return m;
  }
  
  public int q()
  {
    return j;
  }
  
  public int r()
  {
    return k;
  }
  
  public int[] s()
  {
    return l;
  }
  
  public int t()
  {
    return p;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(a);
    if (str1.length() != 0) {}
    for (str1 = "C[".concat(str1);; str1 = new String("C["))
    {
      str1 = String.valueOf(str1);
      String str2 = i;
      str1 = String.valueOf(String.valueOf(str1).length() + 18 + String.valueOf(str2).length() + str1 + "; clientGenerated=" + str2);
      int i1 = j;
      return String.valueOf(String.valueOf(str1).length() + 31 + str1 + "; notificationLevel=" + i1).concat("]");
    }
  }
  
  public int u()
  {
    return q;
  }
  
  public long v()
  {
    return r;
  }
  
  public long w()
  {
    return x;
  }
  
  public byte[] x()
  {
    return s;
  }
  
  public boolean y()
  {
    return v;
  }
  
  public boolean z()
  {
    return x > 0L;
  }
}

/* Location:
 * Qualified Name:     ega
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */