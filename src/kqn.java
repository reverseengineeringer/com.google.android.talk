import java.util.Collection;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class kqn
  extends kws<K, Collection<V>>
{
  final transient Map<K, Collection<V>> a;
  
  kqn(Map<K, Collection<V>> paramMap)
  {
    Map localMap;
    a = localMap;
  }
  
  public Collection<V> a(Object paramObject)
  {
    Collection localCollection = (Collection)kwj.a(a, paramObject);
    if (localCollection == null) {
      return null;
    }
    return b.a(paramObject, localCollection);
  }
  
  Map.Entry<K, Collection<V>> a(Map.Entry<K, Collection<V>> paramEntry)
  {
    Object localObject = paramEntry.getKey();
    return kwj.a(localObject, b.a(localObject, (Collection)paramEntry.getValue()));
  }
  
  protected Set<Map.Entry<K, Collection<V>>> a()
  {
    return new kqo(this);
  }
  
  public Collection<V> b(Object paramObject)
  {
    paramObject = (Collection)a.remove(paramObject);
    if (paramObject == null) {
      return null;
    }
    Collection localCollection = b.c();
    localCollection.addAll((Collection)paramObject);
    b.b -= ((Collection)paramObject).size();
    ((Collection)paramObject).clear();
    return localCollection;
  }
  
  public void clear()
  {
    if (a == b.a)
    {
      b.g();
      return;
    }
    kty.c(new kqp(this));
  }
  
  public boolean containsKey(Object paramObject)
  {
    return kwj.b(a, paramObject);
  }
  
  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || (a.equals(paramObject));
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
  
  public Set<K> keySet()
  {
    return b.k();
  }
  
  public int size()
  {
    return a.size();
  }
  
  public String toString()
  {
    return a.toString();
  }
}

/* Location:
 * Qualified Name:     kqn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */