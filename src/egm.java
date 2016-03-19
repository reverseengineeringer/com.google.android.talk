import java.util.ArrayList;
import java.util.List;

public final class egm
  extends egf
{
  private static final long serialVersionUID = 1L;
  private final int d;
  private final int u;
  private final int v;
  private final int w;
  
  public egm(jzl paramjzl, int paramInt, long paramLong, kcq paramkcq)
  {
    super(paramjzl, paramInt, paramLong);
    d = aal.a(a, 0);
    u = aal.a(b, 0);
    v = aal.a(c, 1);
    w = aal.a(d, 1);
  }
  
  protected void b(bfz parambfz, dyy paramdyy)
  {
    new edp(this).b(parambfz);
  }
  
  public int d()
  {
    return d;
  }
  
  public int e()
  {
    return u;
  }
  
  public List<czb> f()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(b);
    return localArrayList;
  }
  
  public int g()
  {
    return w;
  }
}

/* Location:
 * Qualified Name:     egm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */