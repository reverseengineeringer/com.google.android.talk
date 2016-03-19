import com.google.common.collect.MapMakerInternalMap;

public final class kvk
  extends kvj<K>
{
  kvk(MapMakerInternalMap paramMapMakerInternalMap)
  {
    super(paramMapMakerInternalMap);
  }
  
  public K next()
  {
    return (K)c().getKey();
  }
}

/* Location:
 * Qualified Name:     kvk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */