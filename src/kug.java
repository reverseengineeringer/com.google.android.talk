import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;

final class kug<K, V>
  extends AbstractMap<K, V>
  implements Serializable, ConcurrentMap<K, V>
{
  private static final long serialVersionUID = 0L;
  private final avb a;
  private final kuh b;
  
  kug(kuf paramkuf)
  {
    a = paramkuf.a();
    b = j;
  }
  
  public boolean containsKey(Object paramObject)
  {
    return false;
  }
  
  public boolean containsValue(Object paramObject)
  {
    return false;
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return Collections.emptySet();
  }
  
  public V get(Object paramObject)
  {
    return null;
  }
  
  public V put(K paramK, V paramV)
  {
    fii.a(paramK);
    fii.a(paramV);
    new kun(paramK, paramV, b);
    return null;
  }
  
  public V putIfAbsent(K paramK, V paramV)
  {
    return (V)put(paramK, paramV);
  }
  
  public V remove(Object paramObject)
  {
    return null;
  }
  
  public boolean remove(Object paramObject1, Object paramObject2)
  {
    return false;
  }
  
  public V replace(K paramK, V paramV)
  {
    fii.a(paramK);
    fii.a(paramV);
    return null;
  }
  
  public boolean replace(K paramK, V paramV1, V paramV2)
  {
    fii.a(paramK);
    fii.a(paramV2);
    return false;
  }
}

/* Location:
 * Qualified Name:     kug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */