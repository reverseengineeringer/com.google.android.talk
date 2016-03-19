import com.google.common.cache.LocalCache.ReferenceEntry;

 enum kos
{
  kos() {}
  
  <K, V> LocalCache.ReferenceEntry<K, V> a(kpf<K, V> paramkpf, LocalCache.ReferenceEntry<K, V> paramReferenceEntry1, LocalCache.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramkpf = super.a(paramkpf, paramReferenceEntry1, paramReferenceEntry2);
    a(paramReferenceEntry1, paramkpf);
    b(paramReferenceEntry1, paramkpf);
    return paramkpf;
  }
  
  <K, V> LocalCache.ReferenceEntry<K, V> a(kpf<K, V> paramkpf, K paramK, int paramInt, LocalCache.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return new kpn(paramK, paramInt, paramReferenceEntry);
  }
}

/* Location:
 * Qualified Name:     kos
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */