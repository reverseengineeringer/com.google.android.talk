import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public final class kpu<K, V>
  extends kpw<K, V>
{
  volatile long a = Long.MAX_VALUE;
  LocalCache.ReferenceEntry<K, V> b = LocalCache.i();
  LocalCache.ReferenceEntry<K, V> c = LocalCache.i();
  
  kpu(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramReferenceQueue, paramK, paramInt, paramReferenceEntry);
  }
  
  public long getAccessTime()
  {
    return a;
  }
  
  public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
  {
    return b;
  }
  
  public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
  {
    return c;
  }
  
  public void setAccessTime(long paramLong)
  {
    a = paramLong;
  }
  
  public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    b = paramReferenceEntry;
  }
  
  public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    c = paramReferenceEntry;
  }
}

/* Location:
 * Qualified Name:     kpu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */