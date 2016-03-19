import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public final class dtv
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  public final dtw a;
  public final int b;
  private final String c;
  
  private dtv(kbh paramkbh)
  {
    a = new dtw(a);
    c = b;
    b = aal.a(c, 0);
  }
  
  public static List<dtv> a(kbh[] paramArrayOfkbh)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfkbh.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(new dtv(paramArrayOfkbh[i]));
      i += 1;
    }
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     dtv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */