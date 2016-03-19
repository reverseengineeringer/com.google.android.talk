import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.io.Serializable;

public class dqf
  implements Serializable
{
  static final boolean a = false;
  private static final dsf g = new dsf();
  private static final long serialVersionUID = 1L;
  public eff b;
  public final dsf c;
  public final long d;
  public final long e;
  public boolean f;
  private long h;
  private long i;
  private long j;
  private long k;
  private long l;
  private byte[] m;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public dqf()
  {
    c = g;
    d = -1L;
    e = 0L;
  }
  
  public dqf(iye paramiye)
  {
    if (paramiye != null)
    {
      c = new dsf(paramiye);
      long l1 = l2;
      if (b != null)
      {
        l1 = l2;
        if (b.a != null)
        {
          l1 = l2;
          if (b.a.length > 0)
          {
            l1 = l2;
            if (b.a[0].a != null) {
              l1 = aal.a(b.a[0].a, 0L);
            }
          }
        }
      }
      d = l1;
      if ((d != null) && (d.a != null)) {}
      for (l1 = aal.a(d.a, 0);; l1 = 0L)
      {
        e = l1;
        return;
      }
    }
    c = g;
    d = -1L;
    e = 0L;
  }
  
  public dqf(kdp paramkdp, long paramLong)
  {
    c = new dsf(paramkdp);
    d = paramLong;
    e = aal.a(f, 0L);
  }
  
  public dqf(kdp paramkdp, jxc paramjxc)
  {
    c = new dsf(paramkdp);
    d = -1L;
    e = aal.a(f, 0L);
    if ((paramjxc != null) && (c != null) && (d != null))
    {
      k = aal.a(c, 0L);
      l = aal.a(d, 0L);
      return;
    }
    k = -1L;
    l = -1L;
  }
  
  public static void a(int paramInt, dqf paramdqf)
  {
    long l1 = paramdqf.d();
    long l2 = paramdqf.e();
    if ((dvp.o.b(paramInt)) && (l1 != -1L) && (l2 != -1L)) {
      new duu(aal.oJ).a(paramInt, l1, l2);
    }
  }
  
  public static void a(bfd parambfd, dsf paramdsf)
  {
    if (parambfd != null)
    {
      int n = parambfd.g();
      if ((dvp.o.b(n)) && (paramdsf != null)) {
        break label24;
      }
    }
    label24:
    do
    {
      return;
      if (e == dsg.b)
      {
        String str = String.valueOf(ezi.b(parambfd.a()));
        if (str.length() != 0) {}
        for (str = "Perform warm sync based on ClientSyncHint from the server for account ".concat(str);; str = new String("Perform warm sync based on ClientSyncHint from the server for account "))
        {
          ezi.c("Babel", str, new Object[0]);
          RealTimeChatService.a(parambfd.g(), false, ebq.c, f);
          aal.a(parambfd, 2308);
          return;
        }
      }
    } while (e != dsg.d);
    paramdsf = String.valueOf(ezi.b(parambfd.a()));
    if (paramdsf.length() != 0) {}
    for (paramdsf = "Clear all the local hash state based on the server request for account ".concat(paramdsf);; paramdsf = new String("Clear all the local hash state based on the server request for account "))
    {
      ezi.c("Babel", paramdsf, new Object[0]);
      new duu(aal.oJ).c(parambfd.g());
      aal.a(parambfd, 2311);
      return;
    }
  }
  
  protected static void a(bfd parambfd, String paramString, efr paramefr)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      if (!paramString.startsWith("from_hash_sync:")) {
        break label75;
      }
      paramefr.b(1);
      aal.a(parambfd, 2317);
    }
    for (;;)
    {
      aen.a(parambfd.g(), SystemClock.elapsedRealtime(), 10, new csn().a(481).c(paramefr.j()).b(paramefr.n()).a(paramefr.a()));
      return;
      label75:
      paramefr.b(2);
    }
  }
  
  public static boolean a(iye paramiye)
  {
    return (paramiye != null) && (a != null);
  }
  
  public static boolean a(kdp paramkdp)
  {
    int n = aal.a(a, 0);
    return (n != 1) && (n != 0) && (n != 6);
  }
  
  protected static cyx[] a(jzh[] paramArrayOfjzh, jyc[] paramArrayOfjyc)
  {
    int i4 = 0;
    if (paramArrayOfjzh == null) {
      return null;
    }
    int n = 0;
    int i1 = 0;
    int i2;
    if (n < paramArrayOfjzh.length)
    {
      int i3;
      if (g != null)
      {
        i3 = i1;
        if (aal.a(g, false)) {}
      }
      else if ((a != null) && (aal.a(a, 0) == 3))
      {
        i3 = i1;
        if (paramArrayOfjyc != null)
        {
          i2 = 0;
          for (;;)
          {
            i3 = i1;
            if (i2 >= paramArrayOfjyc.length) {
              break;
            }
            if (paramArrayOfjyc[i2] != null)
            {
              localObject = c;
              if (localObject == null) {
                break label240;
              }
            }
            label240:
            for (Object localObject = l;; localObject = null)
            {
              if (localObject == null) {
                break label246;
              }
              i3 = 0;
              while (i3 < localObject.length)
              {
                if ((TextUtils.equals(a.b, c.b)) && (e != null))
                {
                  if (d == null) {
                    d = new jzj();
                  }
                  d.g = new String[1];
                  d.g[0] = e.a;
                }
                i3 += 1;
              }
              localObject = null;
              break;
            }
            label246:
            i2 += 1;
          }
        }
      }
      else
      {
        i2 = 0;
      }
      for (;;)
      {
        i3 = i1;
        if (i2 < paramArrayOfjzh.length)
        {
          if ((i2 == n) || (paramArrayOfjzh[i2] == null)) {
            break label364;
          }
          if ((a == null) || (aal.a(a, 0) != 3)) {
            break label358;
          }
        }
        label358:
        for (i3 = 1;; i3 = 0)
        {
          if ((i3 == 0) || (!TextUtils.equals(c.b, c.b))) {
            break label364;
          }
          paramArrayOfjzh[n] = null;
          i3 = i1 + 1;
          n += 1;
          i1 = i3;
          break;
        }
        label364:
        i2 += 1;
      }
    }
    paramArrayOfjyc = paramArrayOfjzh;
    if (i1 > 0)
    {
      paramArrayOfjyc = new jzh[paramArrayOfjzh.length - i1];
      n = 0;
      for (i1 = i4; n < paramArrayOfjzh.length; i1 = i2)
      {
        i2 = i1;
        if (paramArrayOfjzh[n] != null)
        {
          paramArrayOfjyc[i1] = paramArrayOfjzh[n];
          i2 = i1 + 1;
        }
        n += 1;
      }
    }
    return aal.a(paramArrayOfjyc, null);
  }
  
  public dsf a()
  {
    return c;
  }
  
  public void a(long paramLong)
  {
    h = paramLong;
  }
  
  public void a(bfd parambfd) {}
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    f = true;
    if (parambfz != null) {}
    for (parambfz = parambfz.g();; parambfz = null)
    {
      a(parambfz, c);
      return;
    }
  }
  
  public void a(eff parameff)
  {
    b = parameff;
  }
  
  public int b()
  {
    return b.c();
  }
  
  public void b(long paramLong)
  {
    i = paramLong;
  }
  
  public eff c()
  {
    return b;
  }
  
  public void c(long paramLong)
  {
    j = paramLong;
  }
  
  public long d()
  {
    return k;
  }
  
  public long e()
  {
    return l;
  }
  
  public byte[] f()
  {
    if (m == null) {
      m = efc.a(this);
    }
    return m;
  }
  
  protected long g()
  {
    return ((bdp)ilh.a(aal.oJ, bdp.class)).a("babel_yieldtime", 2000L);
  }
  
  public long h()
  {
    return i;
  }
  
  public long i()
  {
    return j;
  }
  
  protected cqr j()
  {
    cqs localcqs = (cqs)ilh.b(aal.oJ, cqs.class);
    if (localcqs != null) {
      return localcqs.a(18);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     dqf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */