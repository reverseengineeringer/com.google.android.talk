import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class gcc<K, V>
  extends gcl<K, V>
  implements Map<K, V>
{
  gcf<K, V> a;
  
  private gcf<K, V> b()
  {
    if (a == null) {
      a = new gcd(this);
    }
    return a;
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
 * Qualified Name:     gcc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */