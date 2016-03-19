import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;

abstract class kqm<K, V>
  extends krc<K, V>
  implements Serializable
{
  private static final long serialVersionUID = 2447537837011683357L;
  transient Map<K, Collection<V>> a;
  transient int b;
  
  protected kqm(Map<K, Collection<V>> paramMap)
  {
    fii.a(paramMap.isEmpty());
    a = paramMap;
  }
  
  Collection<V> a(K paramK, Collection<V> paramCollection)
  {
    if ((paramCollection instanceof SortedSet)) {
      return new kra(this, paramK, (SortedSet)paramCollection, null);
    }
    if ((paramCollection instanceof Set)) {
      return new kqz(this, paramK, (Set)paramCollection);
    }
    if ((paramCollection instanceof List)) {
      return a(paramK, (List)paramCollection, null);
    }
    return new kqv(this, paramK, paramCollection, null);
  }
  
  List<V> a(K paramK, List<V> paramList, kqv paramkqv)
  {
    if ((paramList instanceof RandomAccess)) {
      return new kqs(this, paramK, paramList, paramkqv);
    }
    return new kqx(this, paramK, paramList, paramkqv);
  }
  
  final void a(Map<K, Collection<V>> paramMap)
  {
    a = paramMap;
    b = 0;
    paramMap = paramMap.values().iterator();
    if (paramMap.hasNext())
    {
      Collection localCollection = (Collection)paramMap.next();
      if (!localCollection.isEmpty()) {}
      for (boolean bool = true;; bool = false)
      {
        fii.a(bool);
        int i = b;
        b = (localCollection.size() + i);
        break;
      }
    }
  }
  
  public boolean a(K paramK, V paramV)
  {
    Collection localCollection = (Collection)a.get(paramK);
    if (localCollection == null)
    {
      localCollection = d();
      if (localCollection.add(paramV))
      {
        b += 1;
        a.put(paramK, localCollection);
        return true;
      }
      throw new AssertionError("New Collection violated the Collection spec");
    }
    if (localCollection.add(paramV))
    {
      b += 1;
      return true;
    }
    return false;
  }
  
  public Collection<V> b(K paramK)
  {
    Collection localCollection2 = (Collection)a.get(paramK);
    Collection localCollection1 = localCollection2;
    if (localCollection2 == null) {
      localCollection1 = d();
    }
    return a(paramK, localCollection1);
  }
  
  abstract Collection<V> c();
  
  public boolean c(Object paramObject)
  {
    return a.containsKey(paramObject);
  }
  
  Collection<V> d()
  {
    return c();
  }
  
  Map<K, Collection<V>> e()
  {
    return a;
  }
  
  public int f()
  {
    return b;
  }
  
  public void g()
  {
    Iterator localIterator = a.values().iterator();
    while (localIterator.hasNext()) {
      ((Collection)localIterator.next()).clear();
    }
    a.clear();
    b = 0;
  }
  
  Set<K> h()
  {
    if ((a instanceof SortedMap)) {
      return new kqu(this, (SortedMap)a);
    }
    return new kqq(this, a);
  }
  
  Map<K, Collection<V>> i()
  {
    if ((a instanceof SortedMap)) {
      return new kqt(this, (SortedMap)a);
    }
    return new kqn(this, a);
  }
}

/* Location:
 * Qualified Name:     kqm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */