import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class kqq
  extends kwq<K, Collection<V>>
{
  kqq(Map<K, Collection<V>> paramMap)
  {
    super(localMap);
  }
  
  public void clear()
  {
    kty.c(iterator());
  }
  
  public boolean containsAll(Collection<?> paramCollection)
  {
    return a().keySet().containsAll(paramCollection);
  }
  
  public boolean equals(Object paramObject)
  {
    return (this == paramObject) || (a().keySet().equals(paramObject));
  }
  
  public int hashCode()
  {
    return a().keySet().hashCode();
  }
  
  public Iterator<K> iterator()
  {
    return new kqr(this, a().entrySet().iterator());
  }
  
  public boolean remove(Object paramObject)
  {
    paramObject = (Collection)a().remove(paramObject);
    int i;
    if (paramObject != null)
    {
      i = ((Collection)paramObject).size();
      ((Collection)paramObject).clear();
      a.b -= i;
    }
    for (;;)
    {
      return i > 0;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     kqq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */