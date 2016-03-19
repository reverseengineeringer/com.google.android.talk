import com.google.common.collect.MapMakerInternalMap.ReferenceEntry;

 enum kuv
{
  kuv() {}
  
  <K, V> MapMakerInternalMap.ReferenceEntry<K, V> a(kvo<K, V> paramkvo, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramkvo = super.a(paramkvo, paramReferenceEntry1, paramReferenceEntry2);
    b(paramReferenceEntry1, paramkvo);
    return paramkvo;
  }
  
  <K, V> MapMakerInternalMap.ReferenceEntry<K, V> a(kvo<K, V> paramkvo, K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return new kvw(paramK, paramInt, paramReferenceEntry);
  }
}

/* Location:
 * Qualified Name:     kuv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */