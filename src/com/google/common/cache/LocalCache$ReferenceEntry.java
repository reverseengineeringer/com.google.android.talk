package com.google.common.cache;

import kps;

public abstract interface LocalCache$ReferenceEntry<K, V>
{
  public abstract long getAccessTime();
  
  public abstract int getHash();
  
  public abstract K getKey();
  
  public abstract ReferenceEntry<K, V> getNext();
  
  public abstract ReferenceEntry<K, V> getNextInAccessQueue();
  
  public abstract ReferenceEntry<K, V> getNextInWriteQueue();
  
  public abstract ReferenceEntry<K, V> getPreviousInAccessQueue();
  
  public abstract ReferenceEntry<K, V> getPreviousInWriteQueue();
  
  public abstract kps<K, V> getValueReference();
  
  public abstract long getWriteTime();
  
  public abstract void setAccessTime(long paramLong);
  
  public abstract void setNextInAccessQueue(ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void setNextInWriteQueue(ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void setPreviousInAccessQueue(ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void setPreviousInWriteQueue(ReferenceEntry<K, V> paramReferenceEntry);
  
  public abstract void setValueReference(kps<K, V> paramkps);
  
  public abstract void setWriteTime(long paramLong);
}

/* Location:
 * Qualified Name:     com.google.common.cache.LocalCache.ReferenceEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */