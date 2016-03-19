import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

public enum kvm
  implements MapMakerInternalMap.ReferenceEntry<Object, Object>
{
  private kvm() {}
  
  public long getExpirationTime()
  {
    return 0L;
  }
  
  public int getHash()
  {
    return 0;
  }
  
  public Object getKey()
  {
    return null;
  }
  
  public MapMakerInternalMap.ReferenceEntry<Object, Object> getNext()
  {
    return null;
  }
  
  public MapMakerInternalMap.ReferenceEntry<Object, Object> getNextEvictable()
  {
    return this;
  }
  
  public MapMakerInternalMap.ReferenceEntry<Object, Object> getNextExpirable()
  {
    return this;
  }
  
  public MapMakerInternalMap.ReferenceEntry<Object, Object> getPreviousEvictable()
  {
    return this;
  }
  
  public MapMakerInternalMap.ReferenceEntry<Object, Object> getPreviousExpirable()
  {
    return this;
  }
  
  public kwb<Object, Object> getValueReference()
  {
    return null;
  }
  
  public void setExpirationTime(long paramLong) {}
  
  public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<Object, Object> paramReferenceEntry) {}
  
  public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<Object, Object> paramReferenceEntry) {}
  
  public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<Object, Object> paramReferenceEntry) {}
  
  public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<Object, Object> paramReferenceEntry) {}
  
  public void setValueReference(kwb<Object, Object> paramkwb) {}
}

/* Location:
 * Qualified Name:     kvm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */