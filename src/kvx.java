import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

public final class kvx<K, V>
  extends kvv<K, V>
  implements MapMakerInternalMap.ReferenceEntry<K, V>
{
  volatile long e = Long.MAX_VALUE;
  MapMakerInternalMap.ReferenceEntry<K, V> f = MapMakerInternalMap.g();
  MapMakerInternalMap.ReferenceEntry<K, V> g = MapMakerInternalMap.g();
  
  kvx(K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramK, paramInt, paramReferenceEntry);
  }
  
  public long getExpirationTime()
  {
    return e;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
  {
    return f;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
  {
    return g;
  }
  
  public void setExpirationTime(long paramLong)
  {
    e = paramLong;
  }
  
  public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    f = paramReferenceEntry;
  }
  
  public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    g = paramReferenceEntry;
  }
}

/* Location:
 * Qualified Name:     kvx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */