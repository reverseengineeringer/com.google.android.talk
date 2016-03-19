import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class kqp
  implements Iterator<Map.Entry<K, Collection<V>>>
{
  final Iterator<Map.Entry<K, Collection<V>>> a = c.a.entrySet().iterator();
  Collection<V> b;
  
  kqp(kqn paramkqn) {}
  
  public boolean hasNext()
  {
    return a.hasNext();
  }
  
  public void remove()
  {
    a.remove();
    c.b.b -= b.size();
    b.clear();
  }
}

/* Location:
 * Qualified Name:     kqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */