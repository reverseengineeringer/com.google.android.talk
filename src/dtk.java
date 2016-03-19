import java.io.Serializable;
import java.util.EnumMap;
import java.util.concurrent.TimeUnit;

public final class dtk
  implements Serializable
{
  private static final long serialVersionUID = 2L;
  public final long a;
  public final String b;
  private final EnumMap<dnv, Object> c = new EnumMap(dnv.class);
  
  public dtk(kcv paramkcv, String paramString, long paramLong)
  {
    a = paramLong;
    b = paramString;
    c.put(dnv.a, a);
    c.put(dnv.b, b);
    Object localObject2 = c;
    Object localObject3 = dnv.c;
    paramString = i;
    if (paramString != null)
    {
      paramString = a;
      if ((paramString != null) && (paramString.length > 0))
      {
        paramString = 0a;
        if ((paramString != null) && (paramString.length > 0))
        {
          paramString = aal.a(efx.a(paramString), null);
          ((EnumMap)localObject2).put((Enum)localObject3, paramString);
          if (e == null) {
            break label315;
          }
          paramString = e.a;
          label143:
          c.put(dnv.d, paramString);
          localObject2 = c;
          localObject3 = dnv.e;
          paramString = f;
          if (paramString == null) {
            break label366;
          }
          if (!aal.a(a, false)) {
            break label320;
          }
          paramString = Integer.valueOf(1);
          label191:
          ((EnumMap)localObject2).put((Enum)localObject3, paramString);
          localObject2 = c;
          localObject3 = dnv.f;
          paramString = j;
          if ((paramString == null) || (a == null)) {
            break label371;
          }
          paramLong = aal.a(a, 0L);
        }
      }
    }
    label315:
    label320:
    label366:
    label371:
    for (paramString = Long.valueOf(TimeUnit.MICROSECONDS.toMillis(paramLong));; paramString = null)
    {
      ((EnumMap)localObject2).put((Enum)localObject3, paramString);
      paramString = c;
      localObject2 = dnv.g;
      localObject3 = c;
      paramkcv = (kcv)localObject1;
      if (localObject3 != null)
      {
        paramkcv = (kcv)localObject1;
        if (localObject3.length > 0) {
          paramkcv = new dnw(localObject3[0]);
        }
      }
      paramString.put((Enum)localObject2, paramkcv);
      return;
      paramString = null;
      break;
      paramString = null;
      break label143;
      if (aal.a(c, false))
      {
        paramString = Integer.valueOf(2);
        break label191;
      }
      if (aal.a(b, false))
      {
        paramString = Integer.valueOf(3);
        break label191;
      }
      paramString = Integer.valueOf(0);
      break label191;
      paramString = null;
      break label191;
    }
  }
  
  public Object a(dnv paramdnv)
  {
    return c.get(paramdnv);
  }
}

/* Location:
 * Qualified Name:     dtk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */