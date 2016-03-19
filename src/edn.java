import android.os.SystemClock;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class edn
  extends edm
{
  final String A;
  final int B;
  String C;
  String D;
  long E = -1L;
  final boolean F;
  int G = -1;
  final String H;
  String I;
  int J;
  int K;
  int L;
  int M = 2;
  int N;
  axw O;
  final List<efx> l;
  List<eft> m;
  final boolean n;
  final int o;
  final String p;
  final String q;
  final long r;
  final long s;
  final long t;
  long u;
  final boolean v;
  long w;
  final long x;
  final int y;
  final long z;
  
  public edn(efr paramefr, boolean paramBoolean, long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    super(paramefr.a(), paramefr.b(), paramefr.c(), paramefr.k(), paramefr.j(), paramefr.n(), paramefr.l(), paramefr.m(), paramefr.o(), emc.e, paramefr.p());
    l = paramefr.d();
    m = paramefr.e();
    n = paramefr.q();
    o = paramefr.s();
    p = paramefr.t();
    q = null;
    x = 0L;
    y = 0;
    z = 0L;
    A = null;
    B = 6;
    F = paramefr.r();
    H = null;
    v = paramBoolean;
    r = paramLong1;
    s = paramLong2;
    t = paramLong3;
    u = paramLong4;
    L = paramefr.h();
    M = paramefr.u();
    N = paramefr.i();
    O = ((axw)ilh.b(aal.oJ, axw.class));
  }
  
  public edn(String paramString)
  {
    super(paramString, (czb)localObject1, localObject2, -1L, str1, null, -1, 1, 0L, localemc, null);
    String str2;
    H = str2;
    l = new ArrayList();
    Object localObject3;
    if (localObject3 != null)
    {
      paramString = ((List)localObject3).iterator();
      while (paramString.hasNext())
      {
        localObject1 = (efx)paramString.next();
        l.add(localObject1);
      }
    }
    Object localObject4;
    if (localObject4 != null)
    {
      m = new ArrayList();
      paramString = ((List)localObject4).iterator();
      while (paramString.hasNext())
      {
        localObject1 = (eft)paramString.next();
        m.add(localObject1);
      }
    }
    boolean bool;
    n = bool;
    if (bool) {}
    for (this.i = Long.MAX_VALUE;; this.i = 0L)
    {
      int j;
      o = j;
      String str3;
      p = str3;
      v = false;
      Object localObject7;
      r = localObject7;
      s = 0L;
      t = 0L;
      String str4;
      q = str4;
      Object localObject5;
      x = localObject5;
      int k;
      y = k;
      Object localObject6;
      z = localObject6;
      String str5;
      A = str5;
      int i1;
      B = i1;
      F = true;
      String str6;
      I = str6;
      int i2;
      J = i2;
      int i;
      K = i;
      O = ((axw)ilh.b(aal.oJ, axw.class));
      return;
    }
  }
  
  private void a(bfz parambfz, dyy paramdyy, int paramInt)
  {
    bfd localbfd = parambfz.g();
    boolean bool6 = localbfd.b().a(g);
    double d2 = 0.0D;
    double d1 = 0.0D;
    int i1 = 0;
    Object localObject1 = Collections.emptyList();
    int j;
    Object localObject7;
    Object localObject5;
    Object localObject3;
    Object localObject4;
    Object localObject6;
    Object localObject2;
    Object localObject11;
    String str2;
    String str1;
    int k;
    int i;
    String str3;
    Object localObject12;
    byte[] arrayOfByte;
    Object localObject10;
    Object localObject9;
    Object localObject8;
    if (m != null)
    {
      j = m.size();
      if (j != 1) {
        break label1316;
      }
      localObject7 = (eft)m.get(0);
      localObject5 = f;
      localObject3 = h;
      localObject4 = g;
      localObject6 = d;
      localObject2 = e;
      if (!(localObject7 instanceof efw)) {
        break label862;
      }
      localObject7 = (efw)localObject7;
      localObject11 = i;
      str2 = j;
      str1 = k;
      k = l;
      j = m;
      i = n;
      str3 = o;
      localObject12 = p;
      arrayOfByte = null;
      Object localObject13 = null;
      localObject10 = localObject6;
      localObject9 = localObject5;
      localObject8 = localObject2;
      localObject7 = localObject3;
      localObject6 = localObject13;
      localObject5 = localObject4;
      localObject4 = str3;
      localObject3 = localObject12;
      localObject2 = arrayOfByte;
    }
    for (;;)
    {
      label221:
      label234:
      boolean bool1;
      boolean bool3;
      boolean bool4;
      boolean bool5;
      long l1;
      int i3;
      int i4;
      int i2;
      if (H != null)
      {
        str3 = H;
        bool1 = RealTimeChatService.d(localbfd, f);
        boolean bool2 = a(localbfd.g(), parambfz);
        bool3 = b(parambfz);
        bool4 = c(parambfz);
        bool5 = d(parambfz);
        l1 = SystemClock.elapsedRealtime();
        i3 = e(parambfz);
        i4 = M;
        if (i3 != 1) {
          break label1655;
        }
        i2 = i3;
        label306:
        M = i2;
        localObject12 = new bgn();
        a = a;
        b = b;
        c = f;
        d = o;
        e = p;
        f = g;
        g = str3;
        h = this.k.ordinal();
        i = h;
        j = ((String)localObject11);
        k = str2;
        l = str1;
        n = ((String)localObject9);
        o = ((String)localObject10);
        p = ((String)localObject8);
        q = d2;
        r = d1;
        s = ((String)localObject6);
        t = ((String)localObject5);
        u = ((String)localObject4);
        v = ((String)localObject3);
        w = ((byte[])localObject2);
        m = i;
        x = bool6;
        y = c;
        z = this.i;
        A = n;
        B = k;
        C = j;
        D = ((String)localObject7);
        E = q;
        F = x;
        G = y;
        H = z;
        I = A;
        J = C;
        K = D;
        L = F;
        M = -1;
        N = G;
        O = I;
        P = J;
        Q = K;
        R = i1;
        if (!bool6) {
          break label1662;
        }
        i = 1;
        label685:
        S = i;
        T = paramInt;
        U = r;
        V = (l1 - r / 1000L);
        i = 10;
        paramInt = i;
        if (!bool6)
        {
          j = localbfd.g();
          bool6 = b(j, parambfz);
          paramInt = i;
          if (!bool2)
          {
            paramInt = i;
            if (!bool6)
            {
              paramInt = i;
              if (!bool1)
              {
                if (c != dyy.a()) {
                  break label1671;
                }
                paramdyy.b(h, j);
                paramInt = i;
              }
            }
          }
          label798:
          w = (SystemClock.elapsedRealtime() * 1000L);
        }
        E = parambfz.a((bgn)localObject12);
        localObject1 = ((List)localObject1).iterator();
        for (;;)
        {
          if (((Iterator)localObject1).hasNext())
          {
            parambfz.a((bgp)((Iterator)localObject1).next());
            continue;
            j = 0;
            break;
            label862:
            if ((localObject7 instanceof efy))
            {
              localObject7 = (efy)localObject7;
              localObject11 = i;
              i1 = j;
              localObject12 = null;
              localObject10 = localObject6;
              str3 = null;
              i = 0;
              j = 0;
              localObject6 = localObject4;
              localObject9 = localObject5;
              str1 = null;
              localObject4 = null;
              localObject8 = localObject2;
              localObject5 = null;
              localObject7 = localObject3;
              k = 0;
              str2 = null;
              localObject2 = localObject12;
              localObject3 = localObject5;
              localObject5 = localObject6;
              localObject6 = str3;
              break label221;
            }
            if ((localObject7 instanceof efu))
            {
              localObject11 = i;
              localObject12 = null;
              localObject10 = localObject6;
              str3 = null;
              i = 0;
              j = 0;
              localObject6 = localObject4;
              localObject9 = localObject5;
              str1 = null;
              localObject4 = null;
              localObject8 = localObject2;
              localObject5 = null;
              localObject7 = localObject3;
              k = 0;
              str2 = null;
              localObject2 = localObject12;
              localObject3 = localObject5;
              localObject5 = localObject6;
              localObject6 = str3;
              break label221;
            }
            if ((localObject7 instanceof efv))
            {
              localObject7 = (efv)localObject7;
              d2 = i;
              d1 = j;
              localObject7 = k;
              localObject12 = null;
              str3 = null;
              localObject10 = localObject6;
              localObject9 = localObject5;
              localObject6 = localObject7;
              localObject7 = localObject3;
              j = 0;
              localObject11 = null;
              k = 0;
              str1 = null;
              i = 0;
              str2 = null;
              localObject5 = localObject4;
              localObject4 = null;
              localObject8 = localObject2;
              localObject2 = localObject12;
              localObject3 = str3;
              break label221;
            }
            if ((localObject7 instanceof efs))
            {
              localObject7 = (efs)localObject7;
              if (((efs)localObject7).a() != null)
              {
                arrayOfByte = lyi.a(((efs)localObject7).a());
                localObject12 = null;
                str3 = null;
                localObject10 = localObject6;
                localObject7 = localObject3;
                j = 0;
                localObject9 = localObject5;
                i = 0;
                k = 0;
                str1 = null;
                localObject11 = null;
                str2 = null;
                localObject5 = localObject4;
                localObject4 = null;
                localObject8 = localObject2;
                localObject2 = arrayOfByte;
                localObject3 = localObject12;
                localObject6 = str3;
                break label221;
              }
              ezi.d("Babel", "askjane result is null.", new Object[0]);
            }
            arrayOfByte = null;
            localObject12 = null;
            localObject10 = localObject6;
            str3 = null;
            i = 0;
            localObject7 = localObject3;
            j = 0;
            localObject6 = localObject4;
            k = 0;
            localObject9 = localObject5;
            str1 = null;
            localObject4 = null;
            str2 = null;
            localObject11 = null;
            localObject8 = localObject2;
            localObject2 = arrayOfByte;
            localObject3 = localObject12;
            localObject5 = localObject6;
            localObject6 = str3;
            break label221;
            label1316:
            if (j <= 1) {
              break label1767;
            }
            localObject2 = new ArrayList(j);
            localObject3 = new StringBuilder();
            i = 0;
            localObject1 = null;
            k = 0;
            label1351:
            if (k < j)
            {
              if (k > 0) {
                ((StringBuilder)localObject3).append('|');
              }
              localObject4 = (eft)m.get(k);
              localObject5 = new bgp();
              a = f;
              b = a;
              c = f;
              d = h;
              if ((localObject4 instanceof efw))
              {
                localObject6 = (efw)localObject4;
                e = l;
                f = m;
              }
            }
          }
        }
      }
      for (;;)
      {
        ((StringBuilder)localObject3).append(aal.a(new String[] { f, h }));
        ((List)localObject2).add(localObject5);
        k += 1;
        break label1351;
        if ((localObject4 instanceof efy))
        {
          localObject6 = (efy)localObject4;
          localObject1 = i;
          i = j;
        }
        else if ((localObject4 instanceof efu))
        {
          localObject1 = i;
          continue;
          localObject9 = ((StringBuilder)localObject3).toString();
          i1 = i;
          i = 0;
          localObject11 = localObject1;
          localObject4 = null;
          localObject3 = null;
          localObject5 = null;
          localObject6 = null;
          localObject7 = "multipart/mixed";
          k = 0;
          str2 = null;
          localObject1 = localObject2;
          str3 = null;
          localObject8 = null;
          localObject10 = null;
          j = 0;
          str1 = null;
          localObject2 = localObject4;
          localObject4 = str3;
          break;
          str3 = aal.a(l, (String)localObject5);
          break label234;
          label1655:
          i2 = i4;
          break label306;
          label1662:
          i = M;
          break label685;
          label1671:
          paramInt = i;
          if (c == 10) {
            break label798;
          }
          paramdyy.a(h, j);
          paramInt = c;
          break label798;
          parambfz.a(f, h, this.i, B, (String)localObject7, g, str3, (String)localObject9, E, G, i1);
          a(parambfz, paramdyy, bool1, bool3, bool4, bool5, l1, i3, i4, paramInt);
          return;
        }
      }
      label1767:
      localObject3 = null;
      localObject4 = null;
      k = 0;
      localObject11 = null;
      localObject8 = null;
      localObject7 = null;
      str2 = null;
      localObject10 = null;
      j = 0;
      i = 0;
      str1 = null;
      localObject5 = null;
      localObject6 = null;
      localObject9 = null;
      localObject2 = null;
    }
  }
  
  private void a(bfz parambfz, dyy paramdyy, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, long paramLong, int paramInt1, int paramInt2, int paramInt3)
  {
    int i;
    bgc localbgc;
    if (e != 0L)
    {
      i = parambfz.g().g();
      l1 = ((ekq)ilh.a(aal.oJ, ekq.class)).e(i);
      localbgc = new bgc();
      a = paramdyy.f();
      b = paramBoolean2;
      n = paramBoolean3;
      if (paramBoolean4) {
        break label515;
      }
      paramBoolean2 = true;
      c = paramBoolean2;
      if (System.currentTimeMillis() * 1000L > l1) {
        break label521;
      }
      paramBoolean2 = true;
      label100:
      d = paramBoolean2;
      e = paramBoolean1;
      f = d;
      if ((!dvp.v.b(i)) || (!dvp.x.b(i))) {
        break label527;
      }
      label144:
      g = paramInt3;
      i = h;
      j = parambfz.t(f);
      k = parambfz.u(f);
      h = b(i);
      l = paramInt2;
      m = paramInt1;
      paramBoolean1 = b();
      if (!v) {
        break label571;
      }
      parambfz = new csn().c(a).a(e).b(b).a(f);
      if ((!b(i)) || (d) || (paramdyy.f() != dza.e)) {
        break label536;
      }
      aen.a(i, w / 1000L, 10, parambfz.a(401).a(localbgc));
      aen.a(i, paramLong, 10, parambfz.a(402));
      label327:
      if (paramdyy.f() == dza.b)
      {
        aen.a(i, paramdyy.d() / 1000L, 10, parambfz.a(451).a(localbgc));
        aen.a(i, paramLong, 10, parambfz.a(452));
      }
      l1 = r / 1000L;
      paramdyy = parambfz.a(1);
      if (paramBoolean1) {
        break label566;
      }
    }
    label515:
    label521:
    label527:
    label536:
    label566:
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      aen.a(i, l1, 1, paramdyy.a(paramBoolean1).a(null));
      aen.a(i, s / 1000L, 10, parambfz.a(206).a(null));
      aen.a(i, t / 1000L, 10, parambfz.a(207).a(null));
      aen.a(i, u / 1000L, 10, parambfz.a(107).a(null));
      aen.a(i, paramLong, 4, parambfz.a(0).a(localbgc));
      return;
      paramBoolean2 = false;
      break;
      paramBoolean2 = false;
      break label100;
      paramInt3 = c;
      break label144;
      aen.a(i, w / 1000L, 10, parambfz.a(411).a(localbgc));
      break label327;
    }
    label571:
    parambfz = new csn().c(a).b(b).a(f);
    long l1 = r / 1000L;
    paramdyy = parambfz.a(L).b(N);
    if (!paramBoolean1) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      aen.a(i, l1, 1, paramdyy.a(paramBoolean1).a(localbgc));
      aen.a(i, t / 1000L, 10, parambfz.a(204).a(null));
      aen.a(i, u / 1000L, 10, parambfz.a(108).a(null));
      aen.a(i, paramLong, 4, parambfz.a(0).a(localbgc));
      aen.a(i, paramLong, 10, parambfz.a(461).a(localbgc));
      return;
    }
  }
  
  private boolean a(int paramInt, bfz parambfz)
  {
    if ((dvp.v.b(paramInt)) && (dvp.x.b(paramInt))) {
      return c(parambfz);
    }
    return !b(parambfz);
  }
  
  private boolean b()
  {
    if (O != null) {
      return O.a();
    }
    return false;
  }
  
  private static boolean b(int paramInt)
  {
    return ((ekq)ilh.a(aal.oJ, ekq.class)).b(paramInt);
  }
  
  private boolean b(int paramInt, bfz parambfz)
  {
    if ((dvp.v.b(paramInt)) && (dvp.x.b(paramInt))) {
      return f(parambfz);
    }
    return d(parambfz);
  }
  
  private boolean b(bfz parambfz)
  {
    return parambfz.m(f) <= h;
  }
  
  private boolean c(bfz parambfz)
  {
    Long localLong = parambfz.h(f, a);
    parambfz = parambfz.g(f, a);
    int i;
    if (localLong != null)
    {
      i = 1;
      if ((parambfz == null) || (aal.a(parambfz, 0L) <= 0L)) {
        break label65;
      }
    }
    label65:
    for (int j = 1;; j = 0)
    {
      if ((i == 0) || (j == 0)) {
        break label70;
      }
      return true;
      i = 0;
      break;
    }
    label70:
    return false;
  }
  
  private boolean d(bfz parambfz)
  {
    long l1 = parambfz.t(f);
    return h <= l1;
  }
  
  private int e(bfz parambfz)
  {
    parambfz = parambfz.f(f, a);
    if (parambfz == null) {
      return 2;
    }
    return J;
  }
  
  private boolean f(bfz parambfz)
  {
    return e(parambfz) == 1;
  }
  
  public long a()
  {
    return E;
  }
  
  public edn a(int paramInt)
  {
    G = paramInt;
    return this;
  }
  
  public edn a(String paramString)
  {
    C = paramString;
    return this;
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    parambfz.a();
    u = (SystemClock.elapsedRealtime() * 1000L);
    try
    {
      if (o != 3) {
        parambfz.c(f, 1);
      }
      a(parambfz, paramdyy, 1);
      a(parambfz);
      parambfz.b();
      parambfz.c();
      bft.d(parambfz, f);
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
  
  public void a(emc paramemc)
  {
    k = paramemc;
  }
  
  public edn b(String paramString)
  {
    D = paramString;
    return this;
  }
  
  public void b(bfz parambfz, dyy paramdyy)
  {
    a(parambfz, paramdyy, L);
    a(parambfz);
  }
}

/* Location:
 * Qualified Name:     edn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */