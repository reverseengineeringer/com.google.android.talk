import java.util.Collection;
import java.util.List;
import java.util.Map;

abstract class kql<K, V>
  extends kqm<K, V>
  implements kwt<K, V>
{
  private static final long serialVersionUID = 6588350623831699109L;
  
  protected kql(Map<K, Collection<V>> paramMap)
  {
    super(paramMap);
  }
  
  abstract List<V> a();
  
  public List<V> a(K paramK)
  {
    return (List)super.b(paramK);
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
 * Qualified Name:     kql
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */