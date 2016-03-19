import java.io.Serializable;
import java.util.Collection;
import java.util.Map;

public abstract class kte<K, V>
  extends krc<K, V>
  implements Serializable
{
  private static final long serialVersionUID = 0L;
  final transient ksm<K, ? extends krz<V>> b;
  final transient int c;
  
  kte(ksm<K, ? extends krz<V>> paramksm, int paramInt)
  {
    b = paramksm;
    c = paramInt;
  }
  
  boolean a()
  {
    return b.d();
  }
  
  @Deprecated
  public boolean a(K paramK, Iterable<? extends V> paramIterable)
  {
    throw new UnsupportedOperationException();
  }
  
  @Deprecated
  public boolean a(K paramK, V paramV)
  {
    throw new UnsupportedOperationException();
  }
  
  public kth<K> c()
  {
    return b.g();
  }
  
  public boolean c(Object paramObject)
  {
    return b.containsKey(paramObject);
  }
  
  public abstract krz<V> d(K paramK);
  
  public ksm<K, Collection<V>> d()
  {
    return b;
  }
  
  public int f()
  {
    return c;
  }
  
  Map<K, Collection<V>> i()
  {
    throw new AssertionError("should never be called");
  }
}

/* Location:
 * Qualified Name:     kte
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */