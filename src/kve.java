import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

final class kve
  extends kuq<K, V>
{
  MapMakerInternalMap.ReferenceEntry<K, V> a = this;
  MapMakerInternalMap.ReferenceEntry<K, V> b = this;
  
  kve(kvd paramkvd) {}
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
  {
    return a;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
  {
    return b;
  }
  
  public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    a = paramReferenceEntry;
  }
  
  public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    b = paramReferenceEntry;
  }
}

/* Location:
 * Qualified Name:     kve
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */