import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

final class kvh
  extends kuq<K, V>
{
  MapMakerInternalMap.ReferenceEntry<K, V> a = this;
  MapMakerInternalMap.ReferenceEntry<K, V> b = this;
  
  kvh(kvg paramkvg) {}
  
  public long getExpirationTime()
  {
    return Long.MAX_VALUE;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
  {
    return a;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
  {
    return b;
  }
  
  public void setExpirationTime(long paramLong) {}
  
  public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    a = paramReferenceEntry;
  }
  
  public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    b = paramReferenceEntry;
  }
}

/* Location:
 * Qualified Name:     kvh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */