import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class krc<K, V>
  implements kwt<K, V>
{
  private transient Set<K> a;
  private transient Map<K, Collection<V>> b;
  
  public boolean a(K paramK, Iterable<? extends V> paramIterable)
  {
    fii.a(paramIterable);
    if ((paramIterable instanceof Collection))
    {
      paramIterable = (Collection)paramIterable;
      if ((paramIterable.isEmpty()) || (!b(paramK).addAll(paramIterable))) {}
    }
    do
    {
      return true;
      return false;
      paramIterable = paramIterable.iterator();
    } while ((paramIterable.hasNext()) && (kty.a(b(paramK), paramIterable)));
    return false;
  }
  
  public boolean a(K paramK, V paramV)
  {
    return b(paramK).add(paramV);
  }
  
  public Map<K, Collection<V>> b()
  {
    Map localMap2 = b;
    Map localMap1 = localMap2;
    if (localMap2 == null)
    {
      localMap1 = i();
      b = localMap1;
    }
    return localMap1;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {
      return true;
    }
    if ((paramObject instanceof kwt))
    {
      paramObject = (kwt)paramObject;
      return b().equals(((kwt)paramObject).b());
    }
    return false;
  }
  
  Set<K> h()
  {
    return new kwq(b());
  }
  
  public int hashCode()
  {
    return b().hashCode();
  }
  
  abstract Map<K, Collection<V>> i();
  
  public boolean j()
  {
    return f() == 0;
  }
  
  public Set<K> k()
  {
    Set localSet2 = a;
    Set localSet1 = localSet2;
    if (localSet2 == null)
    {
      localSet1 = h();
      a = localSet1;
    }
    return localSet1;
  }
  
  public String toString()
  {
    return b().toString();
  }
}

/* Location:
 * Qualified Name:     krc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */