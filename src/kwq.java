import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class kwq<K, V>
  extends kxy<K>
{
  final Map<K, V> c;
  
  kwq(Map<K, V> paramMap)
  {
    c = ((Map)fii.a(paramMap));
  }
  
  Map<K, V> a()
  {
    return c;
  }
  
  public void clear()
  {
    a().clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return a().containsKey(paramObject);
  }
  
  public boolean isEmpty()
  {
    return a().isEmpty();
  }
  
  public Iterator<K> iterator()
  {
    return kwj.a(a().entrySet().iterator());
  }
  
  public boolean remove(Object paramObject)
  {
    if (contains(paramObject))
    {
      a().remove(paramObject);
      return true;
    }
    return false;
  }
  
  public int size()
  {
    return a().size();
  }
}

/* Location:
 * Qualified Name:     kwq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */