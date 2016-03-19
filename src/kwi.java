import com.google.common.collect.MapMakerInternalMap;
import java.util.Map.Entry;

public final class kwi
  extends krb<K, V>
{
  final K a;
  V b;
  
  kwi(K paramK, V paramV)
  {
    a = paramV;
    Object localObject;
    b = localObject;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      bool1 = bool2;
      if (a.equals(((Map.Entry)paramObject).getKey()))
      {
        bool1 = bool2;
        if (b.equals(((Map.Entry)paramObject).getValue())) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public K getKey()
  {
    return (K)a;
  }
  
  public V getValue()
  {
    return (V)b;
  }
  
  public int hashCode()
  {
    return a.hashCode() ^ b.hashCode();
  }
  
  public V setValue(V paramV)
  {
    Object localObject = c.put(a, paramV);
    b = paramV;
    return (V)localObject;
  }
}

/* Location:
 * Qualified Name:     kwi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */