import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public final class efr
  extends egf
{
  static final boolean d = false;
  private static final long serialVersionUID = 1L;
  private long A;
  private final List<efx> u;
  private final List<eft> v;
  private int w;
  private int x;
  private long y;
  private long z;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public efr(String paramString1, List<efx> paramList, czb paramczb, long paramLong, String paramString2)
  {
    super(paramString1, paramczb, paramLong, paramString2);
    u = paramList;
    v = null;
  }
  
  public efr(jzl paramjzl, int paramInt, long paramLong1, jxh paramjxh, boolean paramBoolean, long paramLong2, long paramLong3, long paramLong4)
  {
    super(paramjzl, paramInt, paramLong1);
    y = paramLong2;
    z = paramLong3;
    A = paramLong4;
    if ((paramInt == 2) && (paramBoolean) && (aal.a(Integer.valueOf(f), 0) != 10))
    {
      ezi.a("Babel", ">>> Other client is active, downgrade notification to DISPLAYONLY", new Object[0]);
      e = dyy.a();
    }
    u = efx.a(a.a);
    Object localObject = a.b;
    int i = aal.a(u, 0);
    ArrayList localArrayList = new ArrayList();
    if (localObject.length > 0)
    {
      int j = localObject.length;
      paramInt = 0;
      while (paramInt < j)
      {
        eft localeft = eft.a(localObject[paramInt], i);
        if (localeft != null) {
          localArrayList.add(localeft);
        }
        paramInt += 1;
      }
    }
    v = localArrayList;
    new ArrayList();
    localObject = eft.a(a.a, aal.a(u, 0));
    v.addAll((Collection)localObject);
    localObject = u.iterator();
    for (paramInt = 0; ((Iterator)localObject).hasNext(); paramInt = nextb.length() + paramInt) {}
    if ((!v.isEmpty()) && ((!TextUtils.isEmpty(v.get(0)).f)) || (!TextUtils.isEmpty(v.get(0)).g)))) {}
    for (i = 1;; i = 0)
    {
      if ((paramInt == 0) && (i == 0))
      {
        localObject = String.valueOf(d);
        paramjzl = String.valueOf(a.a);
        paramInt = a.a.length;
        i = a.b.length;
        ezi.e("Babel", String.valueOf(localObject).length() + 112 + String.valueOf(paramjzl).length() + "Message without text or image: eventId " + (String)localObject + " conversationId " + paramjzl + " num segments = " + paramInt + " num attachments = " + i, new Object[0]);
      }
      return;
    }
  }
  
  public void a(int paramInt)
  {
    w = paramInt;
  }
  
  public void b(int paramInt)
  {
    x = paramInt;
  }
  
  protected void b(bfz parambfz, dyy paramdyy)
  {
    if (d)
    {
      String str1 = g();
      if (str1 != null)
      {
        String str2 = String.valueOf(parambfz.g().a());
        new StringBuilder(String.valueOf(str2).length() + 34 + String.valueOf(str1).length()).append("Received stress message push for ").append(str2).append(":").append(str1);
      }
    }
    new edn(this, true, y, z, A, 0L).a(parambfz, paramdyy);
    bft.a(parambfz, this);
    if (!parambfz.g().b().equals(b())) {
      ((con)ilh.a(aal.oJ, con.class)).a(parambfz.g().g(), coo.b);
    }
  }
  
  public List<efx> d()
  {
    return u;
  }
  
  public List<eft> e()
  {
    return v;
  }
  
  public List<czb> f()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(b);
    return localArrayList;
  }
  
  public String g()
  {
    if ((u != null) && (u.size() == 1))
    {
      String str = u.get(0)).b;
      if (aal.u(str)) {
        return str;
      }
    }
    return null;
  }
  
  public int h()
  {
    return w;
  }
  
  public int i()
  {
    return x;
  }
}

/* Location:
 * Qualified Name:     efr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */