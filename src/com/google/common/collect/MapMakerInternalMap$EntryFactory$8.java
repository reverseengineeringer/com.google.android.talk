package com.google.common.collect;

 enum MapMakerInternalMap$EntryFactory$8
{
  MapMakerInternalMap$EntryFactory$8()
  {
    super(paramString, paramInt, null);
  }
  
  <K, V> MapMakerInternalMap.ReferenceEntry<K, V> copyEntry(MapMakerInternalMap.Segment<K, V> paramSegment, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry1, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry2)
  {
    paramSegment = super.copyEntry(paramSegment, paramReferenceEntry1, paramReferenceEntry2);
    copyExpirableEntry(paramReferenceEntry1, paramSegment);
    copyEvictableEntry(paramReferenceEntry1, paramSegment);
    return paramSegment;
  }
  
  <K, V> MapMakerInternalMap.ReferenceEntry<K, V> newEntry(MapMakerInternalMap.Segment<K, V> paramSegment, K paramK, int paramInt, MapMakerInternalMap.ReferenceEntry<K, V> paramReferenceEntry)
  {
    return new MapMakerInternalMap.SoftExpirableEvictableEntry(keyReferenceQueue, paramK, paramInt, paramReferenceEntry);
  }
}

/* Location:
 * Qualified Name:     com.google.common.collect.MapMakerInternalMap.EntryFactory.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */