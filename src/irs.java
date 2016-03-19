import java.util.Map.Entry;

final class irs
  implements Map.Entry<String, Object>
{
  private Object b;
  private final iry c;
  
  irs(irr paramirr, iry paramiry, Object paramObject)
  {
    c = paramiry;
    b = fii.a(paramObject);
  }
  
  private String a()
  {
    String str2 = c.b();
    String str1 = str2;
    if (a.b.a) {
      str1 = str2.toLowerCase();
    }
    return str1;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof Map.Entry)) {
        return false;
      }
      paramObject = (Map.Entry)paramObject;
    } while ((a().equals(((Map.Entry)paramObject).getKey())) && (getValue().equals(((Map.Entry)paramObject).getValue())));
    return false;
  }
  
  public Object getValue()
  {
    return b;
  }
  
  public int hashCode()
  {
    return a().hashCode() ^ getValue().hashCode();
  }
  
  public Object setValue(Object paramObject)
  {
    Object localObject = b;
    b = fii.a(paramObject);
    c.a(a.a, paramObject);
    return localObject;
  }
}

/* Location:
 * Qualified Name:     irs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */