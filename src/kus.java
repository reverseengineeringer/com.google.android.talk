import com.google.common.collect.MapMakerInternalMap;
import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

public enum kus
{
  static final kus[][] i;
  
  static
  {
    kus localkus1 = a;
    kus localkus2 = b;
    kus localkus3 = c;
    kus localkus4 = d;
    kus localkus5 = e;
    kus localkus6 = f;
    kus localkus7 = g;
    kus localkus8 = h;
    i = new kus[][] { { localkus1, localkus2, localkus3, localkus4 }, new kus[0], { localkus5, localkus6, localkus7, localkus8 } };
  }
  
  kus() {}
  
  public static kus a(kvr paramkvr, boolean paramBoolean1, boolean paramBoolean2)
  {
    int m = 0;
    if (paramBoolean1) {}
    for (int k = 1;; k = 0)
    {
      if (paramBoolean2) {
        m = 2;
      }
      return i[paramkvr.ordinal()][(m | k)];
    }
  }
  
  <K, V> MapMakerInternalMap.ReferenceEntry<K, V> a(kvo<K, V> paramkvo, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    return a(paramkvo, paramReferenceEntry1.getKey(), paramReferenceEntry1.getHash(), paramReferenceEntry2);
  }
  
  abstract <K, V> MapMakerInternalMap.ReferenceEntry<K, V> a(kvo<K, V> paramkvo, K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry);
  
  <K, V> void a(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry2.setExpirationTime(paramReferenceEntry1.getExpirationTime());
    MapMakerInternalMap.a(paramReferenceEntry1.getPreviousExpirable(), paramReferenceEntry2);
    MapMakerInternalMap.a(paramReferenceEntry2, paramReferenceEntry1.getNextExpirable());
    MapMakerInternalMap.d(paramReferenceEntry1);
  }
  
  <K, V> void b(MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    MapMakerInternalMap.b(paramReferenceEntry1.getPreviousEvictable(), paramReferenceEntry2);
    MapMakerInternalMap.b(paramReferenceEntry2, paramReferenceEntry1.getNextEvictable());
    MapMakerInternalMap.e(paramReferenceEntry1);
  }
}

/* Location:
 * Qualified Name:     kus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */