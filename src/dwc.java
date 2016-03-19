import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class dwc
  extends dyx
{
  public String a;
  private String e;
  private final boolean f;
  private int g;
  private final ihb h;
  private int i;
  private int j;
  private final bfw k;
  private final boolean l;
  private final String m;
  
  public dwc(bfd parambfd, String paramString1, ihb paramihb, bfw parambfw, boolean paramBoolean1, boolean paramBoolean2, int paramInt, String paramString2)
  {
    super(parambfd);
    e = paramString1;
    h = paramihb;
    k = parambfw;
    f = paramBoolean1;
    j = 1;
    l = paramBoolean2;
    i = paramInt;
    m = paramString2;
  }
  
  public int G_()
  {
    return j;
  }
  
  public Object o_()
  {
    return new dwd(a, b.b, g, f);
  }
  
  public void p_()
  {
    Object localObject = b.b;
    ArrayList localArrayList1 = aal.a(aal.oJ, h);
    localObject = b.b;
    localObject = h;
    ArrayList localArrayList2 = new ArrayList();
    aal.a((ihb)localObject, new dyp(localArrayList2));
    if (localArrayList1.size() > 100)
    {
      j = 4;
      return;
    }
    localObject = localArrayList1.iterator();
    boolean bool = false;
    int i1 = 0;
    int i2 = 0;
    cyx localcyx;
    if (((Iterator)localObject).hasNext())
    {
      localcyx = (cyx)((Iterator)localObject).next();
      int i3;
      if (a == czd.d)
      {
        i3 = 1;
        label128:
        i3 = i2 | i3;
        if ((a != czd.c) && (a != czd.b)) {
          break label182;
        }
      }
      label182:
      for (i2 = 1;; i2 = 0)
      {
        i1 |= i2;
        bool = localcyx.i() | bool;
        i2 = i3;
        break;
        i3 = 0;
        break label128;
      }
    }
    if ((i1 != 0) && ((i2 != 0) || (bool)))
    {
      j = 2;
      return;
    }
    if ((l) || (localArrayList1.size() > 1) || (localArrayList2.size() > 0)) {}
    for (int n = 2;; n = 1)
    {
      g = n;
      localcyx = null;
      localObject = localcyx;
      if (g == 1)
      {
        axt localaxt = h.a(0);
        localObject = localcyx;
        if (localaxt != null) {
          localObject = localaxt.b().c();
        }
      }
      a = bft.a(new bfz(aal.oJ, b.a), false, e, localArrayList1, localArrayList2, (List)localObject, k, g, i, true, c, m);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dwc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */