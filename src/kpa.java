import com.google.common.cache.LocalCache;

public final class kpa
  extends koz<K>
{
  kpa(LocalCache paramLocalCache)
  {
    super(paramLocalCache);
  }
  
  public K next()
  {
    return (K)c().getKey();
  }
}

/* Location:
 * Qualified Name:     kpa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */