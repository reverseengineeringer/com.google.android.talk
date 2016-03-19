import com.google.common.collect.MapMakerInternalMap;
import java.util.Iterator;

public final class kvl
  extends kvn<K>
{
  public kvl(MapMakerInternalMap paramMapMakerInternalMap) {}
  
  public void clear()
  {
    a.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return a.containsKey(paramObject);
  }
  
  public boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public Iterator<K> iterator()
  {
    return new kvk(a);
  }
  
  public boolean remove(Object paramObject)
  {
    return a.remove(paramObject) != null;
  }
  
  public int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     kvl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */