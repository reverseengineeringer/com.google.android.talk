import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;

final class kqo
  extends kwp<K, Collection<V>>
{
  kqo(kqn paramkqn) {}
  
  Map<K, Collection<V>> a()
  {
    return a;
  }
  
  public boolean contains(Object paramObject)
  {
    return krg.a(a.a.entrySet(), paramObject);
  }
  
  public Iterator<Map.Entry<K, Collection<V>>> iterator()
  {
    return new kqp(a);
  }
  
  public boolean remove(Object paramObject)
  {
    if (!contains(paramObject)) {
      return false;
    }
    Object localObject = (Map.Entry)paramObject;
    paramObject = a.b;
    localObject = ((Map.Entry)localObject).getKey();
    localObject = (Collection)kwj.c(a, localObject);
    if (localObject != null)
    {
      int i = ((Collection)localObject).size();
      ((Collection)localObject).clear();
      b -= i;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     kqo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */