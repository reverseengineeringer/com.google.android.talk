import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;

public final class kpv<K, V>
  extends kpw<K, V>
{
  volatile long a = Long.MAX_VALUE;
  LocalCache.ReferenceEntry<K, V> b = LocalCache.i();
  LocalCache.ReferenceEntry<K, V> c = LocalCache.i();
  volatile long d = Long.MAX_VALUE;
  LocalCache.ReferenceEntry<K, V> e = LocalCache.i();
  LocalCache.ReferenceEntry<K, V> f = LocalCache.i();
  
  kpv(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
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
  
  public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
  {
    return e;
  }
  
  public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
  {
    return c;
  }
  
  public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
  {
    return f;
  }
  
  public long getWriteTime()
  {
    return d;
  }
  
  public void setAccessTime(long paramLong)
  {
    a = paramLong;
  }
  
  public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    b = paramReferenceEntry;
  }
  
  public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    e = paramReferenceEntry;
  }
  
  public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    c = paramReferenceEntry;
  }
  
  public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    f = paramReferenceEntry;
  }
  
  public void setWriteTime(long paramLong)
  {
    d = paramLong;
  }
}

/* Location:
 * Qualified Name:     kpv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */