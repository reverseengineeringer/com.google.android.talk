import com.google.common.cache.LocalCache;
import com.google.common.cache.LocalCache.ReferenceEntry;

public enum koo
{
  static final koo[] i = { a, b, c, d, e, f, g, h };
  
  koo() {}
  
  <K, V> LocalCache.ReferenceEntry<K, V> a(kpf<K, V> paramkpf, LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    return a(paramkpf, paramReferenceEntry1.getKey(), paramReferenceEntry1.getHash(), paramReferenceEntry2);
  }
  
  abstract <K, V> LocalCache.ReferenceEntry<K, V> a(kpf<K, V> paramkpf, K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry);
  
  <K, V> void a(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry2.setAccessTime(paramReferenceEntry1.getAccessTime());
    LocalCache.a(paramReferenceEntry1.getPreviousInAccessQueue(), paramReferenceEntry2);
    LocalCache.a(paramReferenceEntry2, paramReferenceEntry1.getNextInAccessQueue());
    paramReferenceEntry2 = kpe.a;
    paramReferenceEntry1.setNextInAccessQueue(paramReferenceEntry2);
    paramReferenceEntry1.setPreviousInAccessQueue(paramReferenceEntry2);
  }
  
  <K, V> void b(LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramReferenceEntry2.setWriteTime(paramReferenceEntry1.getWriteTime());
    LocalCache.b(paramReferenceEntry1.getPreviousInWriteQueue(), paramReferenceEntry2);
    LocalCache.b(paramReferenceEntry2, paramReferenceEntry1.getNextInWriteQueue());
    paramReferenceEntry2 = kpe.a;
    paramReferenceEntry1.setNextInWriteQueue(paramReferenceEntry2);
    paramReferenceEntry1.setPreviousInWriteQueue(paramReferenceEntry2);
  }
}

/* Location:
 * Qualified Name:     koo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */