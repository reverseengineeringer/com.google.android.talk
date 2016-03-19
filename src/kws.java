import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map.Entry;
import java.util.Set;

abstract class kws<K, V>
  extends AbstractMap<K, V>
{
  private transient Set<Map.Entry<K, V>> a;
  private transient Set<K> b;
  private transient Collection<V> c;
  
  abstract Set<Map.Entry<K, V>> a();
  
  Set<K> b()
  {
    return new kwq(this);
  }
  
  Collection<V> c()
  {
    return new kwr(this);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    Set localSet2 = a;
    Set localSet1 = localSet2;
    if (localSet2 == null)
    {
      localSet1 = a();
      a = localSet1;
    }
    return localSet1;
  }
  
  public Set<K> keySet()
  {
    Set localSet2 = b;
    Set localSet1 = localSet2;
    if (localSet2 == null)
    {
      localSet1 = b();
      b = localSet1;
    }
    return localSet1;
  }
  
  public Collection<V> values()
  {
    Collection localCollection2 = c;
    Collection localCollection1 = localCollection2;
    if (localCollection2 == null)
    {
      localCollection1 = c();
      c = localCollection1;
    }
    return localCollection1;
  }
}

/* Location:
 * Qualified Name:     kws
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */