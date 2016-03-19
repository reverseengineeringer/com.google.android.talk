import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public final class bqe
{
  final Map<String, bjb> a = new HashMap();
  private final ezj b;
  
  public bqe(ezj paramezj)
  {
    b = paramezj;
  }
  
  Collection<bjb> a()
  {
    return a.values();
  }
  
  void a(bjb parambjb)
  {
    if (b != null) {
      b.a("merge start");
    }
    String str = String.format(Locale.US, "%s, TransportId: {%d}", new Object[] { h.b.toString(), Integer.valueOf(b) });
    bjb localbjb2 = (bjb)a.get(str);
    if (localbjb2 == null)
    {
      a.put(str, parambjb);
      if (b != null) {
        b.a("merge done null");
      }
      return;
    }
    Map localMap = a;
    bjb localbjb1;
    if (localbjb2 == null) {
      localbjb1 = parambjb;
    }
    for (;;)
    {
      localMap.put(str, localbjb1);
      if (b == null) {
        break;
      }
      b.a("merge done picked");
      return;
      Object localObject1 = i;
      Object localObject2 = i;
      localbjb1 = parambjb;
      if (localObject1 != null)
      {
        if (localObject2 != null) {
          if (r != r)
          {
            if (r != 1)
            {
              localbjb1 = parambjb;
              if (r == 1) {
                continue;
              }
            }
          }
          else if (q <= q)
          {
            localbjb1 = parambjb;
            if (q < q) {
              continue;
            }
            localObject1 = j;
            localObject2 = j;
            if (localObject2 != null)
            {
              localbjb1 = parambjb;
              if (localObject1 == null) {
                continue;
              }
              int i = ((bzq)localObject1).g().size();
              localbjb1 = parambjb;
              if (((bzq)localObject2).g().size() > i) {
                continue;
              }
            }
          }
        }
        localbjb1 = localbjb2;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bqe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */