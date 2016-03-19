import java.util.EnumMap;
import java.util.Map.Entry;
import java.util.Set;

final class ksd<K extends Enum<K>, V>
  extends ksp<K, V>
{
  private final transient EnumMap<K, V> b;
  
  ksd(EnumMap<K, V> paramEnumMap)
  {
    b = paramEnumMap;
    if (!paramEnumMap.isEmpty()) {}
    for (boolean bool = true;; bool = false)
    {
      fii.a(bool);
      return;
    }
  }
  
  kyp<K> aa_()
  {
    return kty.a(b.keySet().iterator());
  }
  
  kyp<Map.Entry<K, V>> b()
  {
    return kwj.c(b.entrySet().iterator());
  }
  
  public boolean containsKey(Object paramObject)
  {
    return b.containsKey(paramObject);
  }
  
  boolean d()
  {
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    Object localObject = paramObject;
    if ((paramObject instanceof ksd)) {
      localObject = b;
    }
    return b.equals(localObject);
  }
  
  public V get(Object paramObject)
  {
    return (V)b.get(paramObject);
  }
  
  public int size()
  {
    return b.size();
  }
  
  Object writeReplace()
  {
    return new kse(b);
  }
}

/* Location:
 * Qualified Name:     ksd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */