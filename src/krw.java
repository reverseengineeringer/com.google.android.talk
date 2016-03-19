import java.util.Map;

public abstract class krw<K, V>
  extends ksm<K, V>
  implements Map<K, V>
{
  public static <K, V> krw<K, V> a(K paramK, V paramV)
  {
    return new kxz(paramK, paramV);
  }
  
  public abstract krw<V, K> a();
  
  public kth<V> b()
  {
    return a().g();
  }
  
  Object writeReplace()
  {
    return new kry(this);
  }
}

/* Location:
 * Qualified Name:     krw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */