import java.util.Map.Entry;

final class kxz<K, V>
  extends krw<K, V>
{
  final transient K b;
  final transient V c;
  transient krw<V, K> d;
  
  kxz(K paramK, V paramV)
  {
    aal.e(paramK, paramV);
    b = paramK;
    c = paramV;
  }
  
  private kxz(K paramK, V paramV, krw<V, K> paramkrw)
  {
    b = paramK;
    c = paramV;
    d = paramkrw;
  }
  
  public krw<V, K> a()
  {
    krw localkrw = d;
    Object localObject = localkrw;
    if (localkrw == null)
    {
      localObject = new kxz(c, b, this);
      d = ((krw)localObject);
    }
    return (krw<V, K>)localObject;
  }
  
  public boolean containsKey(Object paramObject)
  {
    return b.equals(paramObject);
  }
  
  public boolean containsValue(Object paramObject)
  {
    return c.equals(paramObject);
  }
  
  boolean d()
  {
    return false;
  }
  
  kth<Map.Entry<K, V>> f()
  {
    return kth.b(kwj.a(b, c));
  }
  
  public V get(Object paramObject)
  {
    if (b.equals(paramObject)) {
      return (V)c;
    }
    return null;
  }
  
  kth<K> h()
  {
    return kth.b(b);
  }
  
  public int size()
  {
    return 1;
  }
}

/* Location:
 * Qualified Name:     kxz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */