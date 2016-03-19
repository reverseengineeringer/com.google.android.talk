import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class dmo
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final czb a;
  public final String b;
  public final String c;
  public final int d;
  
  private dmo(jxy paramjxy)
  {
    a = aal.a(a, null);
    c = b;
    if (e == null) {}
    for (;;)
    {
      b = str;
      d = aal.a(c, 0);
      return;
      str = e.a;
    }
  }
  
  public static List<dmo> a(jxy[] paramArrayOfjxy)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfjxy.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(new dmo(paramArrayOfjxy[i]));
      i += 1;
    }
    return localArrayList;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof dmo))) {}
    label51:
    label68:
    label121:
    label127:
    label143:
    label149:
    label165:
    label168:
    for (;;)
    {
      return false;
      paramObject = (dmo)paramObject;
      boolean bool1;
      boolean bool2;
      boolean bool3;
      if (a == null) {
        if (a == null)
        {
          bool1 = true;
          if (b != null) {
            break label127;
          }
          if (b != null) {
            break label121;
          }
          bool2 = true;
          if (c != null) {
            break label149;
          }
          if (c != null) {
            break label143;
          }
          bool3 = true;
          if (d != d) {
            break label165;
          }
        }
      }
      for (int i = 1;; i = 0)
      {
        if ((!bool1) || (!bool2) || (!bool3) || (i == 0)) {
          break label168;
        }
        return true;
        bool1 = false;
        break;
        bool1 = a.equals(a);
        break;
        bool2 = false;
        break label51;
        bool2 = b.equals(b);
        break label51;
        bool3 = false;
        break label68;
        bool3 = c.equals(c);
        break label68;
      }
    }
  }
}

/* Location:
 * Qualified Name:     dmo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */