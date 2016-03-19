package com.google.common.collect;

import kwb;

public abstract interface MapMakerInternalMap$ReferenceEntry<K, V>
{
  public abstract long getExpirationTime();
  
  public abstract int getHash();
  
  public abstract K getKey();
  
  public abstract ReferenceEntry<K, V> getNext();
  
  public abstract ReferenceEntry<K, V> getNextEvictable();
  
  public abstract ReferenceEntry<K, V> getNextExpirable();
  
  public abstract ReferenceEntry<K, V> getPreviousEvictable();
  
  public abstract ReferenceEntry<K, V> getPreviousExpirable();
  
  public abstract kwb<K, V> getValueReference();
  
  public abstract void setExpirationTime(long paramLong);
  
  public abstract void setNextEvictable(ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void setNextExpirable(ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void setPreviousEvictable(ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void setPreviousExpirable(ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void setValueReference(kwb<K, V> paramkwb);
}

/* Location:
 * Qualified Name:     com.google.common.collect.MapMakerInternalMap.ReferenceEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */