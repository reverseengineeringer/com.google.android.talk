import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class dqi
  extends dqr
{
  private static final long serialVersionUID = 1L;
  public final List<czb> g;
  private final List<dtv> j;
  private final long k;
  
  private dqi(jwv paramjwv)
  {
    super(responseHeader, aal.a(b.c, 0L), aal.a(b.o, 0L), b.d);
    j = dtv.a(a);
    k = aal.a(b.o, 0L);
    if (b.h != null) {}
    for (g = aal.a(b.h.b, null);; g = null)
    {
      if (dqf.a)
      {
        paramjwv = String.valueOf(paramjwv);
        new StringBuilder(String.valueOf(paramjwv).length() + 21).append("AddUserResponse from:").append(paramjwv);
      }
      return;
    }
  }
  
  private void a(bfz parambfz, String paramString)
  {
    ArrayList localArrayList = new ArrayList(j.size());
    Iterator localIterator = j.iterator();
    int i = 0;
    if (localIterator.hasNext())
    {
      dtv localdtv = (dtv)localIterator.next();
      if (b != 4) {
        break label139;
      }
      localArrayList.add(aal.a(a.a, a.b, a.c, a.d, null, null, a.e, null, null, Boolean.valueOf(false)));
      i = 1;
    }
    label139:
    for (;;)
    {
      break;
      if (i == 0) {
        return;
      }
      bft.a(parambfz, paramString, localArrayList);
      return;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (jwv)lyi.b(new jwv(), paramArrayOfByte, paramArrayOfByte.length);
    if (aal.a(responseHeader.a, 0) == 4)
    {
      Iterator localIterator = dtv.a(a).iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
      } while (nextb != 4);
    }
    for (int i = 1; i != 0; i = 0)
    {
      responseHeader.a = Integer.valueOf(1);
      b = new jzl();
      long l = System.currentTimeMillis() * 1000L;
      b.c = Long.valueOf(l);
      b.o = Long.valueOf(l + 86400000000L);
      return new dqi(paramArrayOfByte);
    }
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dqi(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if ((bft.a) || (dqf.a))
    {
      paramdyy = String.valueOf("processAddUserResponse ClientContactError Count: ");
      int i = j.size();
      new StringBuilder(String.valueOf(paramdyy).length() + 11).append(paramdyy).append(i);
    }
    paramdyy = b).c;
    long l = b).b;
    parambfz.a();
    if (paramdyy == null) {}
    for (;;)
    {
      try
      {
        localObject1 = String.valueOf("attempt to process invite response for a nonexistant conversation id [");
        ezi.d("Babel", String.valueOf(localObject1).length() + 1 + String.valueOf(paramdyy).length() + (String)localObject1 + paramdyy + "]", new Object[0]);
        parambfz.b();
        return;
      }
      finally
      {
        Object localObject1;
        parambfz.c();
        bft.c(parambfz, paramdyy);
        bft.d(parambfz);
        a(parambfz, paramdyy);
      }
      if (g != null)
      {
        localObject1 = g.iterator();
        if (((Iterator)localObject1).hasNext())
        {
          parambfz.a(paramdyy, (czb)((Iterator)localObject1).next(), true);
          continue;
        }
      }
      parambfz.a(paramdyy, l, d, k);
      if (j.size() > 0) {
        bft.a(parambfz, j, paramdyy, String.valueOf(d), d, k);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dqi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */