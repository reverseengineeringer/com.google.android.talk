import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

public final class kvy<K, V>
  extends kvv<K, V>
  implements MapMakerInternalMap.ReferenceEntry<K, V>
{
  volatile long e = Long.MAX_VALUE;
  MapMakerInternalMap.ReferenceEntry<K, V> f = MapMakerInternalMap.g();
  MapMakerInternalMap.ReferenceEntry<K, V> g = MapMakerInternalMap.g();
  MapMakerInternalMap.ReferenceEntry<K, V> h = MapMakerInternalMap.g();
  MapMakerInternalMap.ReferenceEntry<K, V> i = MapMakerInternalMap.g();
  
  kvy(K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramK, paramInt, paramReferenceEntry);
  }
  
  public long getExpirationTime()
  {
    return e;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
  {
    return h;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
  {
    return f;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
  {
    return i;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
  {
    return g;
  }
  
  public void setExpirationTime(long paramLong)
  {
    e = paramLong;
  }
  
  public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    h = paramReferenceEntry;
  }
  
  public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    f = paramReferenceEntry;
  }
  
  public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    i = paramReferenceEntry;
  }
  
  public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    g = paramReferenceEntry;
  }
}

/* Location:
 * Qualified Name:     kvy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */