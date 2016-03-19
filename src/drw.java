import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class drw
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final Map<String, beq> g = new HashMap();
  
  private drw(iyo paramiyo)
  {
    super(apiHeader);
    paramiyo = a.a;
    int j = paramiyo.length;
    int i = 0;
    while (i < j)
    {
      String str = paramiyo[i];
      Object localObject = c;
      str = a.c;
      localObject = new beq(str, a, e);
      g.put(str, localObject);
      i += 1;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (iyo)lyi.b(new iyo(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(apiHeader)) {
      return new dqs(apiHeader);
    }
    return new drw(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (!g.isEmpty()) {
      parambfz.a(g);
    }
    parambfz.a();
    try
    {
      parambfz.p();
      paramdyy = g.values().iterator();
      while (paramdyy.hasNext())
      {
        beq localbeq = (beq)paramdyy.next();
        parambfz.c(a, b, c, d);
      }
    }
    finally
    {
      parambfz.c();
    }
    parambfz.c();
  }
}

/* Location:
 * Qualified Name:     drw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */