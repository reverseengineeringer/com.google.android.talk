import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class efx
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final int a;
  public final String b;
  public final int c;
  public final String d;
  public final Long e;
  public final String f;
  public final String g;
  public final String h;
  
  public efx(int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    a = paramInt1;
    b = paramString1;
    c = paramInt2;
    d = paramString2;
    e = null;
    f = null;
    g = null;
    h = null;
  }
  
  private efx(mel parammel)
  {
    a = aal.a(a, 0);
    String str;
    int j;
    if (b != null)
    {
      str = b;
      b = str;
      if (c == null) {
        break label252;
      }
      if (!aal.a(c.a, false)) {
        break label247;
      }
      j = 1;
      label58:
      i = j;
      if (aal.a(c.b, false)) {
        i = j | 0x2;
      }
      j = i;
      if (aal.a(c.c, false)) {
        j = i | 0x4;
      }
      i = j;
      if (!aal.a(c.d, false)) {}
    }
    label142:
    label223:
    label241:
    label247:
    label252:
    for (int i = j | 0x8;; i = 0)
    {
      c = i;
      if (d != null)
      {
        d = d.a;
        if (e == null) {
          break label223;
        }
        e = Long.valueOf(aal.a(e.a, 0L));
        f = e.b;
      }
      for (g = e.c;; g = null)
      {
        if (f == null) {
          break label241;
        }
        h = f.a;
        return;
        str = "";
        break;
        d = null;
        break label142;
        e = null;
        f = null;
      }
      h = null;
      return;
      j = 0;
      break label58;
    }
  }
  
  public static List<efx> a(mel[] paramArrayOfmel)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfmel.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(new efx(paramArrayOfmel[i]));
      i += 1;
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     efx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */