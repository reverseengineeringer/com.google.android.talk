import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

abstract class kwp<K, V>
  extends kxy<Map.Entry<K, V>>
{
  abstract Map<K, V> a();
  
  public void clear()
  {
    a().clear();
  }
  
  public boolean contains(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof Map.Entry))
    {
      paramObject = (Map.Entry)paramObject;
      Object localObject1 = ((Map.Entry)paramObject).getKey();
      Object localObject2 = kwj.a(a(), localObject1);
      bool1 = bool2;
      if (StressMode.a(localObject2, ((Map.Entry)paramObject).getValue())) {
        if (localObject2 == null)
        {
          bool1 = bool2;
          if (!a().containsKey(localObject1)) {}
        }
        else
        {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public boolean isEmpty()
  {
    return a().isEmpty();
  }
  
  public boolean remove(Object paramObject)
  {
    if (contains(paramObject))
    {
      paramObject = (Map.Entry)paramObject;
      return a().keySet().remove(((Map.Entry)paramObject).getKey());
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
    catch (UnsupportedOperationException localUnsupportedOperationException) {}
    return aen.a(this, paramCollection.iterator());
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
      HashSet localHashSet = aen.a(paramCollection.size());
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        Object localObject = paramCollection.next();
        if (contains(localObject)) {
          localHashSet.add(((Map.Entry)localObject).getKey());
        }
      }
      return a().keySet().retainAll(localHashSet);
    }
  }
  
  public int size()
  {
    return a().size();
  }
}

/* Location:
 * Qualified Name:     kwp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */