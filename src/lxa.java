import java.util.Map.Entry;

final class lxa
  implements Comparable<lxa>, Map.Entry<K, V>
{
  private final K b;
  private V c;
  
  lxa(K paramK, V paramV)
  {
    b = paramV;
    Object localObject;
    c = localObject;
  }
  
  lxa(Map.Entry<K, V> paramEntry)
  {
    this(paramEntry, (Comparable)((Map.Entry)localObject).getKey(), ((Map.Entry)localObject).getValue());
  }
  
  private static boolean a(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  public K a()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof Map.Entry)) {
        return false;
      }
      paramObject = (Map.Entry)paramObject;
    } while ((a(b, ((Map.Entry)paramObject).getKey())) && (a(c, ((Map.Entry)paramObject).getValue())));
    return false;
  }
  
  public V getValue()
  {
    return (V)c;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (b == null)
    {
      i = 0;
      if (c != null) {
        break label33;
      }
    }
    for (;;)
    {
      return i ^ j;
      i = b.hashCode();
      break;
      label33:
      j = c.hashCode();
    }
  }
  
  public V setValue(V paramV)
  {
    a.e();
    Object localObject = c;
    c = paramV;
    return (V)localObject;
  }
  
  public String toString()
  {
    String str1 = String.valueOf(b);
    String str2 = String.valueOf(c);
    return String.valueOf(str1).length() + 1 + String.valueOf(str2).length() + str1 + "=" + str2;
  }
}

/* Location:
 * Qualified Name:     lxa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */