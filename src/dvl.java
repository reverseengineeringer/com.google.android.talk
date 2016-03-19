import android.content.Context;
import java.util.HashMap;
import java.util.Map;

public final class dvl
  implements hba
{
  private final Object a = new Object();
  private final Map<Integer, haw> b = new HashMap();
  private final Context c;
  private final hpz d;
  
  public dvl(Context paramContext)
  {
    c = paramContext;
    d = ((hpz)ilh.a(paramContext, hpz.class));
  }
  
  public haw a()
  {
    bfd localbfd = aal.h();
    if (localbfd != null) {}
    for (int i = localbfd.g();; i = -1) {
      return a(i);
    }
  }
  
  public haw a(int paramInt)
  {
    if (d.c(paramInt)) {}
    Object localObject3;
    Object localObject2;
    for (String str = d.a(paramInt).b("account_name");; localObject2 = null)
    {
      localObject3 = (haw)b.get(Integer.valueOf(paramInt));
      if (localObject3 != null) {
        break;
      }
      synchronized (a)
      {
        haw localhaw = (haw)b.get(Integer.valueOf(paramInt));
        localObject3 = localhaw;
        if (localhaw == null)
        {
          localObject3 = new cso(c, str, paramInt);
          b.put(Integer.valueOf(paramInt), localObject3);
        }
        return (haw)localObject3;
      }
    }
    return (haw)localObject3;
  }
}

/* Location:
 * Qualified Name:     dvl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */