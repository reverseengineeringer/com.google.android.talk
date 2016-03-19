import com.google.common.collect.MapMakerInternalMap;
import java.util.Iterator;
import java.util.Map.Entry;

public final class kvc
  extends kvn<Map.Entry<K, V>>
{
  public kvc(MapMakerInternalMap paramMapMakerInternalMap) {}
  
  public void clear()
  {
    a.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {}
    Object localObject;
    do
    {
      do
      {
        return false;
        paramObject = (Map.Entry)paramObject;
        localObject = ((Map.Entry)paramObject).getKey();
      } while (localObject == null);
      localObject = a.get(localObject);
    } while ((localObject == null) || (!a.f.a(((Map.Entry)paramObject).getValue(), localObject)));
    return true;
  }
  
  public boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    return new kvb(a);
  }
  
  public boolean remove(Object paramObject)
  {
    if (!(paramObject instanceof Map.Entry)) {}
    Object localObject;
    do
    {
      return false;
      paramObject = (Map.Entry)paramObject;
      localObject = ((Map.Entry)paramObject).getKey();
    } while ((localObject == null) || (!a.remove(localObject, ((Map.Entry)paramObject).getValue())));
    return true;
  }
  
  public int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     kvc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */