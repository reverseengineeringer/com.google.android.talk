import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public final class kpy<K, V>
  extends kpw<K, V>
{
  volatile long a = Long.MAX_VALUE;
  LocalCache.ReferenceEntry<K, V> b = LocalCache.i();
  LocalCache.ReferenceEntry<K, V> c = LocalCache.i();
  
  kpy(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramReferenceQueue, paramK, paramInt, paramReferenceEntry);
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
 * Qualified Name:     kpy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */