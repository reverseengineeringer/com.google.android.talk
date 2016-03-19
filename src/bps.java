import android.content.Context;
import java.io.Serializable;
import java.util.Iterator;
import java.util.List;

public final class bps
  implements Serializable
{
  public final int a;
  public final int b;
  public final String c;
  
  public bps(List<bso> paramList)
  {
    Iterator localIterator = paramList.iterator();
    paramList = null;
    int j = 0;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        bso localbso = (bso)localIterator.next();
        if (b == bsq.b)
        {
          j += 1;
        }
        else
        {
          if (b != bsq.a) {
            break label108;
          }
          i += 1;
          if (i == 1) {
            paramList = a;
          }
        }
      }
    }
    label108:
    for (;;)
    {
      break;
      paramList = null;
      continue;
      a = j;
      b = i;
      c = paramList;
      return;
    }
  }
  
  public void a(Context paramContext)
  {
    if (c != null) {}
    for (Integer localInteger = Integer.valueOf(aal.i(c));; localInteger = null)
    {
      ((bvc)ilh.a(paramContext, bvc.class)).a(2323, a, b, localInteger);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     bps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */