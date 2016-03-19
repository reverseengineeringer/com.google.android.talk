import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class drq
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final Set<String> g;
  private final boolean h;
  private final boolean i;
  private final boolean j;
  private final boolean k;
  private final String l;
  
  drq(mgb parammgb)
  {
    HashSet localHashSet = new HashSet(j.length);
    mgg[] arrayOfmgg = j;
    int n = arrayOfmgg.length;
    int m = 0;
    while (m < n)
    {
      mgg localmgg = arrayOfmgg[m];
      if (a != null) {
        localHashSet.add(a);
      }
      m += 1;
    }
    g = localHashSet;
    h = aal.a(b, false);
    i = aal.a(c, false);
    j = aal.a(g, false);
    k = aal.a(k, false);
    if (a != null)
    {
      l = a.c;
      return;
    }
    l = null;
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      paramArrayOfByte = (mgb)lyi.b(new mgb(), paramArrayOfByte, paramArrayOfByte.length);
      if (paramArrayOfByte != null) {
        return new drq(paramArrayOfByte);
      }
    }
    return null;
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    dvd.a(parambfz.g(), k(), l(), m(), o(), n());
    paramdyy = ilh.c(aal.oJ, drr.class).iterator();
    while (paramdyy.hasNext())
    {
      paramdyy.next();
      ((hpz)ilh.a(aal.oJ, hpz.class)).b(parambfz.g().g()).d();
    }
    parambfz = ((hpz)ilh.a(aal.oJ, hpz.class)).b(parambfz.g().g());
    parambfz.b("use_tycho_branding", n());
    parambfz.d();
  }
  
  public boolean k()
  {
    return h;
  }
  
  public boolean l()
  {
    return i;
  }
  
  public boolean m()
  {
    return j;
  }
  
  public boolean n()
  {
    return k;
  }
  
  public String o()
  {
    return l;
  }
}

/* Location:
 * Qualified Name:     drq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */