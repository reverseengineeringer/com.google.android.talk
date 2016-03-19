import java.util.Collections;
import java.util.Map;

public final class axl
  extends agr<eis>
{
  private static final Object i = new Object();
  public final eyg e;
  public String f;
  public Long g = null;
  private final agx<eis> h;
  
  public axl(eyg parameyg, agx<eis> paramagx, agw paramagw)
  {
    super(parameyg.t(), paramagw);
    a(new agz(1000, 2, 2.0F));
    h = paramagx;
    e = parameyg;
    f = null;
    if (e.o() != null) {
      parameyg = cvm.a(doo.f);
    }
    try
    {
      f = parameyg.a(e.o());
      if (f != null) {
        g = parameyg.c(f);
      }
      return;
    }
    catch (dvn paramagx)
    {
      for (;;)
      {
        ezi.d("Babel", "Error getting auth token", paramagx);
      }
    }
  }
  
  protected agv<eis> a(agq paramagq)
  {
    for (;;)
    {
      synchronized (i)
      {
        try
        {
          Object localObject2 = new agj();
          a = b;
          g = c;
          e = Long.MAX_VALUE;
          f = Long.MAX_VALUE;
          c = System.currentTimeMillis();
          if (c.get("VolleyDiskCache") != null)
          {
            bool = true;
            localObject2 = new agv(new eis(b, (String)c.get("Content-Type"), bool), (agj)localObject2);
            return (agv<eis>)localObject2;
          }
        }
        catch (OutOfMemoryError localOutOfMemoryError)
        {
          int j = b.length;
          paramagq = String.valueOf(c());
          ezi.e("Babel", String.valueOf(paramagq).length() + 43 + "Caught OOM for " + j + " byte media, url=" + paramagq, new Object[0]);
          paramagq = agv.a(new aha(localOutOfMemoryError, (short)0));
          return paramagq;
        }
      }
      boolean bool = false;
    }
  }
  
  public Map<String, String> g()
  {
    if (f != null)
    {
      hq localhq = new hq();
      String str = String.valueOf(f);
      if (str.length() != 0) {}
      for (str = "Bearer ".concat(str);; str = new String("Bearer "))
      {
        localhq.put("Authorization", str);
        return localhq;
      }
    }
    return Collections.emptyMap();
  }
  
  public agt l()
  {
    return agt.a;
  }
}

/* Location:
 * Qualified Name:     axl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */