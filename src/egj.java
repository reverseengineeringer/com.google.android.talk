import java.util.ArrayList;
import java.util.List;

public final class egj
  extends egf
{
  private static final boolean d = false;
  private static final long serialVersionUID = 1L;
  private final int u;
  private final int v;
  private final List<czb> w;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public egj(jzl paramjzl, int paramInt, long paramLong, kcc paramkcc)
  {
    super(paramjzl, paramInt, paramLong);
    u = aal.a(a, 0);
    v = aal.a(c, 0);
    w = aal.a(b, null);
  }
  
  protected void b(bfz parambfz, dyy paramdyy)
  {
    String str1 = a();
    String str2;
    if (d)
    {
      str2 = String.valueOf("processMembershipChange conversationId: ");
      String str3 = String.valueOf(str1);
      if (str3.length() == 0) {
        break label90;
      }
      str2.concat(str3);
    }
    for (;;)
    {
      parambfz.a();
      try
      {
        bft.a(parambfz, this, paramdyy, true);
        parambfz.b();
        parambfz.c();
        ezi.a("Babel", "updating conversation (name/avatars) because of a memebership change.", new Object[0]);
        bft.b(parambfz, str1);
        bft.d(parambfz);
        bft.d(parambfz, str1);
        return;
      }
      finally
      {
        label90:
        parambfz.c();
      }
      new String(str2);
    }
  }
  
  public int d()
  {
    return u;
  }
  
  public int e()
  {
    return v;
  }
  
  public List<czb> f()
  {
    ArrayList localArrayList = new ArrayList(w);
    localArrayList.add(b);
    return localArrayList;
  }
  
  public List<czb> g()
  {
    return w;
  }
}

/* Location:
 * Qualified Name:     egj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */