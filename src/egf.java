import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.ArrayList;
import java.util.List;

public abstract class egf
  extends efo
{
  private static final boolean d = false;
  private static final long serialVersionUID = 2L;
  public int e;
  public final int f;
  public final int g;
  public final long h;
  public final int i;
  public final String j;
  public final String k;
  public final String l;
  public final long m;
  public final boolean n;
  public final boolean o;
  public final boolean p;
  public final int q;
  public final String r;
  public final int s;
  public final byte[] t;
  
  static
  {
    imx localimx = ezi.d;
  }
  
  protected egf(String paramString1, czb paramczb, long paramLong, String paramString2)
  {
    super(paramString1, paramczb, paramLong);
    i = 1;
    l = paramString2;
    m = -1L;
    j = null;
    k = null;
    e = 10;
    f = 10;
    g = 0;
    h = 0L;
    n = false;
    o = false;
    p = true;
    t = null;
    q = 1;
    r = null;
    s = 2;
  }
  
  public egf(jzl paramjzl, int paramInt, long paramLong)
  {
    super(a.a, aal.a(b, null), aal.a(c, 0L));
    g = paramInt;
    h = paramLong;
    i = aal.a(f, 0);
    l = d;
    boolean bool;
    label125:
    jzm localjzm;
    if (aal.a(o, 0L) == 0L)
    {
      paramLong = -1L;
      m = paramLong;
      n = aal.a(p, false);
      p = aal.a(r, true);
      if ((p) && (aal.a(q, 0) != 1)) {
        break label461;
      }
      bool = true;
      o = bool;
      s = aal.a(y, 0);
      if (e == null) {
        break label505;
      }
      localjzm = e;
      j = a.b;
      k = bfz.a(aal.a(b, 0L));
      f = aal.a(c, 0);
      if (paramInt != 2) {
        break label467;
      }
      ezi.a("Babel_ConversationsData", ">>> Other client is active, downgrade notification", new Object[0]);
      paramInt = 10;
      label216:
      int i1 = paramInt;
      if (!n)
      {
        i1 = paramInt;
        if (paramInt != 10)
        {
          String str1 = String.valueOf(getClass().getSimpleName());
          String str2 = String.valueOf(p);
          String str3 = String.valueOf(a.a);
          String str4 = String.valueOf(c);
          ezi.d("Babel_ConversationsData", String.valueOf(str1).length() + 132 + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str4).length() + str1 + " event received hasAdvancesSortTimestamp = " + str2 + " advanceSortTimestamp = false, but notificationLevel = " + paramInt + " convId = " + str3 + " timestamp = " + str4, new Object[0]);
          i1 = 10;
        }
      }
      e = i1;
      if (d == null) {
        break label480;
      }
    }
    label461:
    label467:
    label480:
    for (t = lyi.a(d);; t = null)
    {
      paramjzl = s;
      if (paramjzl == null) {
        break label494;
      }
      q = aal.a(a, 1);
      if (b == null) {
        break label488;
      }
      r = b.a;
      return;
      paramLong = aal.a(o, 0L);
      break;
      bool = false;
      break label125;
      paramInt = aal.a(c, 0);
      break label216;
    }
    label488:
    r = null;
    return;
    label494:
    q = 1;
    r = null;
    return;
    label505:
    j = null;
    k = null;
    e = 10;
    f = 10;
    t = null;
    q = 1;
    r = null;
  }
  
  public static egf a(jzl paramjzl, int paramInt1, long paramLong1, boolean paramBoolean, int paramInt2, long paramLong2, long paramLong3, long paramLong4)
  {
    if ((m != null) && (m.a != null)) {
      return new egl(paramjzl, paramInt1, paramLong1, m);
    }
    if (g != null)
    {
      bfd localbfd;
      long l1;
      if ((paramInt2 != -1) && (dvp.o.b(paramInt2)))
      {
        localbfd = dvd.e(paramInt2);
        if ((localbfd != null) && (w != null) && (w.b != null) && (w.d != null) && (w.a != null))
        {
          str = w.a;
          l1 = aal.a(w.d, 0L);
          duu localduu = new duu(aal.oJ);
          if ((!localduu.a(paramInt2, str)) && (l1 > localduu.b(paramInt2)))
          {
            localduu.a(paramInt2, aal.a(w.b, 0L));
            localduu.b(paramInt2, str);
          }
          if ((w.c != null) && (dvp.p.b(paramInt2)))
          {
            l1 = aal.a(w.c, 0L);
            if (l1 != localduu.a(paramInt2))
            {
              str = String.valueOf(ezi.b(localbfd.a()));
              if (str.length() == 0) {
                break label325;
              }
            }
          }
        }
      }
      label325:
      for (String str = "Perform warm sync due to mismatched hash values for account ".concat(str);; str = new String("Perform warm sync due to mismatched hash values for account "))
      {
        ezi.c("Babel_ConversationsData", str, new Object[0]);
        RealTimeChatService.a(localbfd.g(), false, ebq.c, l1);
        aal.a(localbfd, 2309);
        return new efr(paramjzl, paramInt1, paramLong1, g, paramBoolean, paramLong2, paramLong3, paramLong4);
      }
    }
    if (h != null) {
      return new egj(paramjzl, paramInt1, paramLong1, h);
    }
    if (i != null) {
      return new egb(paramjzl, paramInt1, paramLong1, i);
    }
    if (j != null) {
      return new egg(paramjzl, paramInt1, paramLong1, j);
    }
    if (k != null) {
      return new egm(paramjzl, paramInt1, paramLong1, k);
    }
    if ((e != null) && (e.d != null)) {
      return new egw(paramjzl, paramInt1, paramLong1);
    }
    ezi.d("Babel_ConversationsData", "Received Empty Event. Probably not implemented by server yet.", new Object[0]);
    return null;
  }
  
  public static List<egf> a(jzl[] paramArrayOfjzl, boolean paramBoolean, long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    int i3 = paramArrayOfjzl.length;
    int i1 = 0;
    if (i1 < i3)
    {
      Object localObject = paramArrayOfjzl[i1];
      if (paramBoolean) {}
      for (int i2 = 2;; i2 = 0)
      {
        localObject = a((jzl)localObject, i2, paramLong, false, -1, -1L, -1L, -1L);
        if (localObject != null) {
          localArrayList.add(localObject);
        }
        i1 += 1;
        break;
      }
    }
    return localArrayList;
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    int i1 = 1;
    String str2 = a();
    long l1 = c();
    if (r())
    {
      if (bft.a(parambfz, str2, l1, paramdyy, this)) {
        break label543;
      }
      if (d)
      {
        parambfz = String.valueOf(j());
        new StringBuilder(String.valueOf(str2).length() + 68 + String.valueOf(parambfz).length()).append("processEvent saving event ").append(str2).append(" eventId: ").append(parambfz).append(" timestamp: ").append(l1);
      }
    }
    label480:
    label543:
    do
    {
      return;
      Object localObject1 = parambfz.g().b();
      String str1 = a();
      czb localczb = b();
      if (localczb.a()) {
        ezi.e("Babel_ConversationsData", "Sender id for unpersisted event should not be empty", new Object[0]);
      }
      do
      {
        i1 = 0;
        for (;;)
        {
          if (i1 != 0) {
            break label543;
          }
          if (!d) {
            break;
          }
          parambfz = String.valueOf(j());
          new StringBuilder(String.valueOf(str2).length() + 78 + String.valueOf(parambfz).length()).append("Unable to process unpersisted event ").append(str2).append(" eventId: ").append(parambfz).append(" timestamp: ").append(l1);
          return;
          if (localczb.equals(localObject1)) {
            break label480;
          }
          Object localObject2 = parambfz.a(localczb, false, 1);
          if ((localObject2 != null) && (!bfz.a(a)))
          {
            if (d)
            {
              localObject1 = a;
              new StringBuilder(String.valueOf(str1).length() + 43 + String.valueOf(localObject1).length()).append("unpersisted conversation ").append(str1).append(" exists locally as").append((String)localObject1);
            }
            a(a);
          }
          else
          {
            if (ezi.a("Babel_ConversationsData", 3)) {
              ezi.a("Babel_ConversationsData", String.valueOf(str1).length() + 36 + "conversation " + str1 + " does not exist locally", new Object[0]);
            }
            parambfz.a(str1, c(), localczb);
            parambfz.C(str1);
            parambfz.a(str1, aal.a(localczb, null, null, null, null, null));
            localObject2 = new ArrayList();
            ((List)localObject2).add(localczb);
            ((List)localObject2).add(localObject1);
            paramdyy.a(aal.oJ, parambfz, str1, (List)localObject2);
            bft.b(parambfz, str1);
          }
        }
      } while (!ezi.a("Babel_ConversationsData", 3));
      str1 = String.valueOf(str1);
      if (str1.length() != 0) {}
      for (str1 = "Only self user Id is present, cannot determine conversation for ".concat(str1);; str1 = new String("Only self user Id is present, cannot determine conversation for "))
      {
        ezi.a("Babel_ConversationsData", str1, new Object[0]);
        break;
      }
      paramdyy.a(aal.oJ, parambfz, str2, f());
      b(parambfz, paramdyy);
    } while (!n);
    parambfz.h(str2, l1);
  }
  
  protected abstract void b(bfz parambfz, dyy paramdyy);
  
  public List<czb> f()
  {
    return null;
  }
  
  public String j()
  {
    return l;
  }
  
  public long k()
  {
    return m;
  }
  
  public int l()
  {
    return e;
  }
  
  public int m()
  {
    return g;
  }
  
  public String n()
  {
    return k;
  }
  
  public long o()
  {
    return h;
  }
  
  public byte[] p()
  {
    return t;
  }
  
  public boolean q()
  {
    return o;
  }
  
  public boolean r()
  {
    return p;
  }
  
  public int s()
  {
    return q;
  }
  
  public String t()
  {
    return r;
  }
  
  public int u()
  {
    return s;
  }
}

/* Location:
 * Qualified Name:     egf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */