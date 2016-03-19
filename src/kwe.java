import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public final class kwe<K, V>
  extends kwd<K, V>
  implements MapMakerInternalMap.ReferenceEntry<K, V>
{
  MapMakerInternalMap.ReferenceEntry<K, V> d = MapMakerInternalMap.g();
  MapMakerInternalMap.ReferenceEntry<K, V> e = MapMakerInternalMap.g();
  
  kwe(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramReferenceQueue, paramK, paramInt, paramReferenceEntry);
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
  {
    return d;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
  {
    return e;
  }
  
  public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    d = paramReferenceEntry;
  }
  
  public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    e = paramReferenceEntry;
  }
}

/* Location:
 * Qualified Name:     kwe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */