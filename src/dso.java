import java.util.Iterator;
import java.util.List;

public class dso
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private byte[][] g;
  
  private dso(ked paramked)
  {
    super(responseHeader, -1L);
    String str;
    if (dqf.a)
    {
      str = String.valueOf(paramked);
      new StringBuilder(String.valueOf(str).length() + 31).append("SetCallerIdConfigResponse from:").append(str);
    }
    g = new byte[a.length][];
    paramked = a;
    int k = paramked.length;
    int j = 0;
    while (i < k)
    {
      str = paramked[i];
      g[j] = lyi.a(str);
      j += 1;
      i += 1;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (ked)lyi.b(new ked(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader))
    {
      ((azk)ilh.a(aal.oJ, azk.class)).a(1);
      return new dqs(responseHeader);
    }
    return new dso(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    ezi.c("Babel", "SetCallerIdConfigResponse", new Object[0]);
    paramdyy = new jxg[g.length];
    int i = 0;
    Object localObject;
    try
    {
      while (i < g.length)
      {
        localObject = new jxg();
        byte[] arrayOfByte = g[i];
        paramdyy[i] = ((jxg)lyi.b((lyi)localObject, arrayOfByte, arrayOfByte.length));
        i += 1;
      }
      localObject = ilh.c(aal.oJ, dwa.class).iterator();
    }
    catch (lyg parambfz)
    {
      ((azk)ilh.a(aal.oJ, azk.class)).a(1);
      return;
    }
    while (((Iterator)localObject).hasNext()) {
      ((dwa)((Iterator)localObject).next()).a(parambfz.g().g(), paramdyy);
    }
    ((azk)ilh.a(aal.oJ, azk.class)).a(0);
  }
}

/* Location:
 * Qualified Name:     dso
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */