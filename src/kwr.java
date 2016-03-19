import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class kwr<K, V>
  extends AbstractCollection<V>
{
  final Map<K, V> a;
  
  kwr(Map<K, V> paramMap)
  {
    a = ((Map)fii.a(paramMap));
  }
  
  public void clear()
  {
    a.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return a.containsValue(paramObject);
  }
  
  public boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public Iterator<V> iterator()
  {
    return kwj.b(a.entrySet().iterator());
  }
  
  public boolean remove(Object paramObject)
  {
    try
    {
      boolean bool = super.remove(paramObject);
      return bool;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (StressMode.a(paramObject, localEntry.getValue()))
        {
          a.remove(localEntry.getKey());
          return true;
        }
      }
    }
    return false;
  }
  
  public boolean removeAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = super.removeAll((Collection)fii.a(paramCollection));
      return bool;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (paramCollection.contains(localEntry.getValue())) {
          localHashSet.add(localEntry.getKey());
        }
      }
      return a.keySet().removeAll(localHashSet);
    }
  }
  
  public boolean retainAll(Collection<?> paramCollection)
  {
    try
    {
      boolean bool = super.retainAll((Collection)fii.a(paramCollection));
      return bool;
    }
    catch (UnsupportedOperationException localUnsupportedOperationException)
    {
      HashSet localHashSet = new HashSet();
      Iterator localIterator = a.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (paramCollection.contains(localEntry.getValue())) {
          localHashSet.add(localEntry.getKey());
        }
      }
      return a.keySet().retainAll(localHashSet);
    }
  }
  
  public int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     kwr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */