import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

 enum kuy
{
  kuy() {}
  
  <K, V> MapMakerInternalMap.ReferenceEntry<K, V> a(kvo<K, V> paramkvo, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramkvo = super.a(paramkvo, paramReferenceEntry1, paramReferenceEntry2);
    a(paramReferenceEntry1, paramkvo);
    return paramkvo;
  }
  
  <K, V> MapMakerInternalMap.ReferenceEntry<K, V> a(kvo<K, V> paramkvo, K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return new kwf(g, paramK, paramInt, paramReferenceEntry);
  }
}

/* Location:
 * Qualified Name:     kuy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */