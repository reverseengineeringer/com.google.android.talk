import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class drc
  extends dqf
{
  private static final long serialVersionUID = 1L;
  public byte[] g;
  public List<String> h = new ArrayList();
  
  private drc(kam paramkam)
  {
    super(responseHeader, -1L);
    g = b;
    Object localObject = a;
    int j = localObject.length;
    int i = 0;
    while (i < j)
    {
      String str = a.b;
      h.add(str);
      i += 1;
    }
    if (ezi.a("Babel", 3))
    {
      localObject = String.valueOf("GetFavoritesResponse debugUrl: ");
      paramkam = String.valueOf(responseHeader.c);
      if (paramkam.length() == 0) {
        break label130;
      }
    }
    label130:
    for (paramkam = ((String)localObject).concat(paramkam);; paramkam = new String((String)localObject))
    {
      ezi.b("Babel", paramkam, new Object[0]);
      return;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kam)lyi.b(new kam(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drc(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    paramdyy = new ArrayList(h.size());
    parambfz.a();
    try
    {
      Iterator localIterator = h.iterator();
      while (localIterator.hasNext())
      {
        cyx localcyx = parambfz.L((String)localIterator.next());
        if (localcyx != null) {
          paramdyy.add(localcyx);
        }
      }
      parambfz.b(paramdyy, 3);
    }
    finally
    {
      parambfz.c();
    }
    parambfz.b();
    parambfz.c();
    bff.b(aal.oJ, parambfz.g().g(), "hash_pinned");
  }
}

/* Location:
 * Qualified Name:     drc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */