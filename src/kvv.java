import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

public class kvv<K, V>
  implements MapMakerInternalMap.ReferenceEntry<K, V>
{
  final K a;
  final int b;
  final MapMakerInternalMap.ReferenceEntry<K, V> c;
  volatile kwb<K, V> d = MapMakerInternalMap.p;
  
  kvv(K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    a = paramK;
    b = paramInt;
    c = paramReferenceEntry;
  }
  
  public long getExpirationTime()
  {
    throw new UnsupportedOperationException();
  }
  
  public int getHash()
  {
    return b;
  }
  
  public K getKey()
  {
    return (K)a;
  }
  
  public MapMakerInternalMap.ReferenceEntry<K, V> getNext()
  {
    return c;
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
    return d;
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
    kwb localkwb = d;
    d = paramkwb;
    localkwb.b();
  }
}

/* Location:
 * Qualified Name:     kvv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */