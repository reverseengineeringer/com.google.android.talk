import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

final class kqt
  extends kqn
  implements SortedMap<K, Collection<V>>
{
  SortedSet<K> c;
  
  kqt(SortedMap<K, Collection<V>> paramSortedMap)
  {
    super(paramSortedMap, localMap);
  }
  
  private SortedSet<K> d()
  {
    return new kqu(d, (SortedMap)a);
  }
  
  public Comparator<? super K> comparator()
  {
    return ((SortedMap)a).comparator();
  }
  
  public K firstKey()
  {
    return (K)((SortedMap)a).firstKey();
  }
  
  public SortedMap<K, Collection<V>> headMap(K paramK)
  {
    return new kqt(d, ((SortedMap)a).headMap(paramK));
  }
  
  public K lastKey()
  {
    return (K)((SortedMap)a).lastKey();
  }
  
  public SortedMap<K, Collection<V>> subMap(K paramK1, K paramK2)
  {
    return new kqt(d, ((SortedMap)a).subMap(paramK1, paramK2));
  }
  
  public SortedMap<K, Collection<V>> tailMap(K paramK)
  {
    return new kqt(d, ((SortedMap)a).tailMap(paramK));
  }
}

/* Location:
 * Qualified Name:     kqt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */