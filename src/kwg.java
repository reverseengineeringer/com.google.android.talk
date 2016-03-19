import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public final class kwg<K, V>
  extends kwd<K, V>
  implements MapMakerInternalMap.ReferenceEntry<K, V>
{
  volatile long d = Long.MAX_VALUE;
  MapMakerInternalMap.ReferenceEntry<K, V> e = MapMakerInternalMap.g();
  MapMakerInternalMap.ReferenceEntry<K, V> f = MapMakerInternalMap.g();
  MapMakerInternalMap.ReferenceEntry<K, V> g = MapMakerInternalMap.g();
  MapMakerInternalMap.ReferenceEntry<K, V> h = MapMakerInternalMap.g();
  
  kwg(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramReferenceQueue, paramK, paramInt, paramReferenceEntry);
  }
  
  public long getExpirationTime()
  {
    return d;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
  {
    return g;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
  {
    return e;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
  {
    return h;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
  {
    return f;
  }
  
  public void setExpirationTime(long paramLong)
  {
    d = paramLong;
  }
  
  public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    g = paramReferenceEntry;
  }
  
  public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    e = paramReferenceEntry;
  }
  
  public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    h = paramReferenceEntry;
  }
  
  public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    f = paramReferenceEntry;
  }
}

/* Location:
 * Qualified Name:     kwg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */