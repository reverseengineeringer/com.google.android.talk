import com.google.common.cache.LocalCache;

public final class kpr
  extends koz<V>
{
  kpr(LocalCache paramLocalCache)
  {
    super(paramLocalCache);
  }
  
  public V next()
  {
    return (V)c().getValue();
  }
}

/* Location:
 * Qualified Name:     kpr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */