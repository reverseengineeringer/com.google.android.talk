import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

public class kpw<K, V>
  extends WeakReference<K>
  implements LocalCache.ReferenceEntry<K, V>
{
  final int g;
  final LocalCache.ReferenceEntry<K, V> h;
  volatile kps<K, V> i = LocalCache.r;
  
  kpw(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramK, paramReferenceQueue);
    g = paramInt;
    h = paramReferenceEntry;
  }
  
  public long getAccessTime()
  {
    throw new UnsupportedOperationException();
  }
  
  public int getHash()
  {
    return g;
  }
  
  public K getKey()
  {
    return (K)get();
  }
  
  public LocalCache.ReferenceEntry<K, V> getNext()
  {
    return h;
  }
  
  public LocalCache.ReferenceEntry<K, V> getNextInAccessQueue()
  {
    throw new UnsupportedOperationException();
  }
  
  public LocalCache.ReferenceEntry<K, V> getNextInWriteQueue()
  {
    throw new UnsupportedOperationException();
  }
  
  public LocalCache.ReferenceEntry<K, V> getPreviousInAccessQueue()
  {
    throw new UnsupportedOperationException();
  }
  
  public LocalCache.ReferenceEntry<K, V> getPreviousInWriteQueue()
  {
    throw new UnsupportedOperationException();
  }
  
  public kps<K, V> getValueReference()
  {
    return i;
  }
  
  public long getWriteTime()
  {
    throw new UnsupportedOperationException();
  }
  
  public void setAccessTime(long paramLong)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setNextInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setNextInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setPreviousInAccessQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setPreviousInWriteQueue(LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setValueReference(kps<K, V> paramkps)
  {
    i = paramkps;
  }
  
  public void setWriteTime(long paramLong)
  {
    throw new UnsupportedOperationException();
  }
}

/* Location:
 * Qualified Name:     kpw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */