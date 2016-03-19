import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

public class kwd<K, V>
  extends WeakReference<K>
  implements MapMakerInternalMap.ReferenceEntry<K, V>
{
  final int a;
  final MapMakerInternalMap.ReferenceEntry<K, V> b;
  volatile kwb<K, V> c = MapMakerInternalMap.p;
  
  kwd(ReferenceQueue<K> paramReferenceQueue, K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    super(paramK, paramReferenceQueue);
    a = paramInt;
    b = paramReferenceEntry;
  }
  
  public long getExpirationTime()
  {
    throw new UnsupportedOperationException();
  }
  
  public int getHash()
  {
    return a;
  }
  
  public K getKey()
  {
    return (K)get();
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNext()
  {
    return b;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextEvictable()
  {
    throw new UnsupportedOperationException();
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNextExpirable()
  {
    throw new UnsupportedOperationException();
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousEvictable()
  {
    throw new UnsupportedOperationException();
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getPreviousExpirable()
  {
    throw new UnsupportedOperationException();
  }
  
  public kwb<K, V> getValueReference()
  {
    return c;
  }
  
  public void setExpirationTime(long paramLong)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setNextEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setNextExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setPreviousEvictable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setPreviousExpirable(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    throw new UnsupportedOperationException();
  }
  
  public void setValueReference(kwb<K, V> paramkwb)
  {
    kwb localkwb = c;
    c = paramkwb;
    localkwb.b();
  }
}

/* Location:
 * Qualified Name:     kwd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */