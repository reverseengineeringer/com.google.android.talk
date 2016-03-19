import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class dsz
  extends dqf
{
  private static final long serialVersionUID = 1L;
  public int g;
  public byte[] h;
  public Map<String, Integer> i;
  
  private dsz(kfu paramkfu)
  {
    super(responseHeader, -1L);
    Object localObject1;
    if (a != null) {
      switch (aal.a(a, 0))
      {
      default: 
        localObject1 = String.valueOf(a);
        ezi.e("Babel", String.valueOf(localObject1).length() + 57 + "Unexpected error code for UpdateFavoriteContactResponse: " + (String)localObject1, new Object[0]);
      }
    }
    for (;;)
    {
      h = c;
      i = new HashMap();
      localObject1 = b;
      int k = localObject1.length;
      int j = 0;
      while (j < k)
      {
        Object localObject2 = localObject1[j];
        String str = a.b;
        i.put(str, c);
        j += 1;
      }
      g = dta.a;
      continue;
      g = dta.b;
    }
    if (ezi.a("Babel", 3))
    {
      localObject1 = String.valueOf("UpdateFavoriteContactResponse debugUrl: ");
      paramkfu = String.valueOf(responseHeader.c);
      if (paramkfu.length() == 0) {
        break label245;
      }
    }
    label245:
    for (paramkfu = ((String)localObject1).concat(paramkfu);; paramkfu = new String((String)localObject1))
    {
      ezi.b("Babel", paramkfu, new Object[0]);
      return;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kfu)lyi.b(new kfu(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsz(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    parambfz.a();
    for (;;)
    {
      cyx localcyx;
      try
      {
        paramdyy = parambfz.s();
        dqb localdqb = (dqb)b;
        Iterator localIterator = localdqb.p().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localcyx = parambfz.L((String)localIterator.next());
        if (localcyx == null) {
          continue;
        }
        if (localdqb.o())
        {
          paramdyy.remove(localcyx);
          continue;
        }
        if (paramdyy.contains(localcyx)) {
          continue;
        }
      }
      finally
      {
        parambfz.c();
      }
      paramdyy.add(0, localcyx);
    }
    parambfz.b(paramdyy, 3);
    parambfz.b();
    parambfz.c();
    bff.b(aal.oJ, parambfz.g().g(), "hash_pinned");
  }
}

/* Location:
 * Qualified Name:     dsz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */