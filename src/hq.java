import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class hq<K, V>
  extends if<K, V>
  implements Map<K, V>
{
  hw<K, V> a;
  
  public hq() {}
  
  public hq(int paramInt)
  {
    super(paramInt);
  }
  
  public hq(if paramif)
  {
    super(paramif);
  }
  
  private hw<K, V> b()
  {
    if (a == null) {
      a = new hr(this);
    }
    return a;
  }
  
  public boolean a(Collection<?> paramCollection)
  {
    return hw.a(this, paramCollection);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return b().d();
  }
  
  public Set<K> keySet()
  {
    return b().e();
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    a(h + paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      put(localEntry.getKey(), localEntry.getValue());
    }
  }
  
  public Collection<V> values()
  {
    return b().f();
  }
}

/* Location:
 * Qualified Name:     hq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */