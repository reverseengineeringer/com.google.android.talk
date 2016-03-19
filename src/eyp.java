import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class eyp<V>
  extends HashMap<czb, V>
{
  private static final long serialVersionUID = 1L;
  
  public boolean containsKey(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof czb))) {
      return false;
    }
    paramObject = (czb)paramObject;
    Iterator localIterator = keySet().iterator();
    while (localIterator.hasNext()) {
      if (((czb)paramObject).a((czb)localIterator.next())) {
        return true;
      }
    }
    return false;
  }
  
  public V get(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof czb))) {
      return null;
    }
    paramObject = (czb)paramObject;
    Iterator localIterator = entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (((czb)paramObject).a((czb)localEntry.getKey())) {
        return (V)localEntry.getValue();
      }
    }
    return null;
  }
  
  public V remove(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof czb))) {
      return null;
    }
    czb localczb = (czb)paramObject;
    Iterator localIterator = entrySet().iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      paramObject = (czb)((Map.Entry)localIterator.next()).getKey();
    } while (!localczb.a((czb)paramObject));
    for (;;)
    {
      if (paramObject != null) {
        return (V)super.remove(paramObject);
      }
      return null;
      paramObject = null;
    }
  }
}

/* Location:
 * Qualified Name:     eyp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */