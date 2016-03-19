import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class dmp
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final String a;
  public final ega b;
  public final List<egf> c;
  public final boolean d;
  public final byte[] e;
  public final long f;
  public final long g;
  public final long h;
  
  private dmp(jyc paramjyc, boolean paramBoolean, long paramLong)
  {
    a = a.a;
    if (c != null)
    {
      b = new ega(c, (byte)0);
      if (b == null) {
        break label198;
      }
      g = aal.a(b, 0L);
      label60:
      c = egf.a(d, paramBoolean, paramLong);
      d = aal.a(g, false);
      if (e == null) {
        break label219;
      }
      jzp localjzp = e;
      if ((b == null) || (b.length <= 0)) {
        break label206;
      }
      e = Arrays.copyOf(b, b.length);
      f = aal.a(a, 0L);
    }
    for (;;)
    {
      int j = h.length;
      paramLong = 0L;
      while (i < j)
      {
        paramLong = Math.max(paramLong, aal.a(h[i].c, 0L));
        i += 1;
      }
      b = null;
      break;
      label198:
      g = 0L;
      break label60;
      label206:
      e = null;
      f = 0L;
      continue;
      label219:
      e = null;
      f = 0L;
    }
    h = paramLong;
  }
  
  public static dmp a(byte[] paramArrayOfByte, boolean paramBoolean, long paramLong)
  {
    if (paramArrayOfByte != null) {
      try
      {
        paramArrayOfByte = new dmp((jyc)lyi.b(new jyc(), paramArrayOfByte, paramArrayOfByte.length), paramBoolean, paramLong);
        return paramArrayOfByte;
      }
      catch (lyg paramArrayOfByte) {}
    }
    return null;
  }
  
  public static List<dmp> a(ArrayList<byte[]> paramArrayList, boolean paramBoolean, long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      dmp localdmp = a((byte[])paramArrayList.next(), paramBoolean, paramLong);
      if (localdmp != null) {
        localArrayList.add(localdmp);
      }
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     dmp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */