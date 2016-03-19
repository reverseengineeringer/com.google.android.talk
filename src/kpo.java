import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;

public class kpo<K, V>
  extends kon<K, V>
{
  final K g;
  final int h;
  final LocalCache.ReferenceEntry<K, V> i;
  volatile kps<K, V> j = LocalCache.r;
  
  kpo(K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    g = paramK;
    h = paramInt;
    i = paramReferenceEntry;
  }
  
  public int getHash()
  {
    return h;
  }
  
  public K getKey()
  {
    return (K)g;
  }
  
  public LocalCache.ReferenceEntry<K, V> getNext()
  {
    return i;
  }
  
  public kps<K, V> getValueReference()
  {
    return j;
  }
  
  public void setValueReference(kps<K, V> paramkps)
  {
    j = paramkps;
  }
}

/* Location:
 * Qualified Name:     kpo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */