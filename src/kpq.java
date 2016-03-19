import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;

public final class kpq<K, V>
  extends kpo<K, V>
{
  volatile long a = Long.MAX_VALUE;
  LocalCache.ReferenceEntry<K, V> b = LocalCache.i();
  LocalCache.ReferenceEntry<K, V> c = LocalCache.i();
  
  kpq(K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramK, paramInt, paramReferenceEntry);
  }
  
  public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
  {
    return b;
  }
  
  public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
  {
    return c;
  }
  
  public long getWriteTime()
  {
    return a;
  }
  
  public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    b = paramReferenceEntry;
  }
  
  public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    c = paramReferenceEntry;
  }
  
  public void setWriteTime(long paramLong)
  {
    a = paramLong;
  }
}

/* Location:
 * Qualified Name:     kpq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */