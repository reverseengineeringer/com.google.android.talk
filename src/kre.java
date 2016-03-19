import java.util.Collection;
import java.util.Map;
import java.util.Set;

abstract class kre<K, V>
  extends kqm<K, V>
  implements kwt<K, V>
{
  private static final long serialVersionUID = 7431625294878419160L;
  
  protected kre(Map<K, Collection<V>> paramMap)
  {
    super(paramMap);
  }
  
  abstract Set<V> a();
  
  public Set<V> a(K paramK)
  {
    return (Set)super.b(paramK);
  }
  
  public boolean a(K paramK, V paramV)
  {
    return super.a(paramK, paramV);
  }
  
  public Map<K, Collection<V>> b()
  {
    return super.b();
  }
  
  public boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }
}

/* Location:
 * Qualified Name:     kre
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */