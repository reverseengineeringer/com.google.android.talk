import java.util.Collection;
import java.util.Comparator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;

final class kqu
  extends kqq
  implements SortedSet<K>
{
  kqu(SortedMap<K, Collection<V>> paramSortedMap)
  {
    super(paramSortedMap, localMap);
  }
  
  public Comparator<? super K> comparator()
  {
    return ((SortedMap)super.a()).comparator();
  }
  
  public K first()
  {
    return (K)((SortedMap)super.a()).firstKey();
  }
  
  public SortedSet<K> headSet(K paramK)
  {
    return new kqu(b, ((SortedMap)super.a()).headMap(paramK));
  }
  
  public K last()
  {
    return (K)((SortedMap)super.a()).lastKey();
  }
  
  public SortedSet<K> subSet(K paramK1, K paramK2)
  {
    return new kqu(b, ((SortedMap)super.a()).subMap(paramK1, paramK2));
  }
  
  public SortedSet<K> tailSet(K paramK)
  {
    return new kqu(b, ((SortedMap)super.a()).tailMap(paramK));
  }
}

/* Location:
 * Qualified Name:     kqu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */