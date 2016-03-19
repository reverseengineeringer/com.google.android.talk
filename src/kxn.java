import java.util.Map.Entry;

final class kxn
  extends krw<V, K>
{
  kxn(kxm paramkxm) {}
  
  public krw<K, V> a()
  {
    return b;
  }
  
  boolean d()
  {
    return false;
  }
  
  kth<Map.Entry<V, K>> f()
  {
    return new kxo(this);
  }
  
  public K get(Object paramObject)
  {
    if ((paramObject == null) || (b.c == null)) {}
    for (;;)
    {
      return null;
      int i = krt.a(paramObject.hashCode());
      int j = b.e;
      for (kss localkss = b.c[(i & j)]; localkss != null; localkss = localkss.b()) {
        if (paramObject.equals(localkss.getValue())) {
          return (K)localkss.getKey();
        }
      }
    }
  }
  
  public int size()
  {
    return a().size();
  }
  
  Object writeReplace()
  {
    return new kxq(b);
  }
}

/* Location:
 * Qualified Name:     kxn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */