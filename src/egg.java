import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

public final class egg
  extends egf
{
  private static final boolean d = false;
  private static final long serialVersionUID = 1L;
  private final int u;
  private final int v;
  private final List<czb> w;
  private final long x;
  private final String y;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  public egg(jzl paramjzl, int paramInt, long paramLong, kaw paramkaw)
  {
    super(paramjzl, paramInt, paramLong);
    u = (aal.a(a, 0) - 1);
    v = aal.a(g, 0);
    w = aal.a(b, null);
    x = aal.a(c, 0L);
    if ((d != null) && (!TextUtils.isEmpty(d.a)))
    {
      y = d.a;
      return;
    }
    y = null;
  }
  
  protected void b(bfz parambfz, dyy paramdyy)
  {
    parambfz.a();
    try
    {
      boolean bool = bft.a(parambfz, this, paramdyy);
      parambfz.b();
      parambfz.c();
      if (bool) {
        bft.d(parambfz, a());
      }
      new edo(this).b(parambfz);
      return;
    }
    finally
    {
      parambfz.c();
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
    if (u != 1) {
      localArrayList.add(b);
    }
    return localArrayList;
  }
  
  public List<czb> g()
  {
    return w;
  }
  
  public long h()
  {
    return x;
  }
  
  public String i()
  {
    return y;
  }
}

/* Location:
 * Qualified Name:     egg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */