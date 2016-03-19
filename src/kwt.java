import java.util.Collection;
import java.util.Map;
import java.util.Set;

public abstract interface kwt<K, V>
{
  public abstract boolean a(K paramK, Iterable<? extends V> paramIterable);
  
  public abstract boolean a(K paramK, V paramV);
  
  public abstract Collection<V> b(K paramK);
  
  public abstract Map<K, Collection<V>> b();
  
  public abstract boolean c(Object paramObject);
  
  public abstract int f();
  
  public abstract boolean j();
  
  public abstract Set<K> k();
}

/* Location:
 * Qualified Name:     kwt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */