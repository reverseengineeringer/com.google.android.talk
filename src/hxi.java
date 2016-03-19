import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

final class hxi
{
  static final int[] a = { 0, 1, 2, 3, 4 };
  private final int b;
  private final Map<Short, hxh> c = new HashMap();
  private int d = 0;
  
  hxi(int paramInt)
  {
    b = paramInt;
  }
  
  protected hxh a(hxh paramhxh)
  {
    paramhxh.b(b);
    return (hxh)c.put(Short.valueOf(paramhxh.b()), paramhxh);
  }
  
  protected hxh a(short paramShort)
  {
    return (hxh)c.get(Short.valueOf(paramShort));
  }
  
  protected void a(int paramInt)
  {
    d = paramInt;
  }
  
  protected hxh[] a()
  {
    return (hxh[])c.values().toArray(new hxh[c.size()]);
  }
  
  protected int b()
  {
    return b;
  }
  
  protected void b(short paramShort)
  {
    c.remove(Short.valueOf(paramShort));
  }
  
  protected int c()
  {
    return c.size();
  }
  
  protected int d()
  {
    return d;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (paramObject == null) {
      return false;
    }
    if ((paramObject instanceof hxi))
    {
      paramObject = (hxi)paramObject;
      if ((((hxi)paramObject).b() == b) && (((hxi)paramObject).c() == c()))
      {
        paramObject = ((hxi)paramObject).a();
        int j = paramObject.length;
        int i = 0;
        while (i < j)
        {
          Object localObject = paramObject[i];
          if ((!hww.a(((hxh)localObject).b())) && (!((hxh)localObject).equals((hxh)c.get(Short.valueOf(((hxh)localObject).b()))))) {
            return false;
          }
          i += 1;
        }
        return true;
      }
    }
    return false;
  }
  
  public int hashCode()
  {
    return (b + 527) * 31 + c.hashCode();
  }
}

/* Location:
 * Qualified Name:     hxi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */