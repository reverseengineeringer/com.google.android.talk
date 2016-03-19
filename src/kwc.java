import com.google.common.collect.MapMakerInternalMap;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Iterator;

public final class kwc
  extends AbstractCollection<V>
{
  public kwc(MapMakerInternalMap paramMapMakerInternalMap) {}
  
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
    return new kwa(a);
  }
  
  public int size()
  {
    return a.size();
  }
  
  public Object[] toArray()
  {
    return MapMakerInternalMap.a(this).toArray();
  }
  
  public <E> E[] toArray(E[] paramArrayOfE)
  {
    return MapMakerInternalMap.a(this).toArray(paramArrayOfE);
  }
}

/* Location:
 * Qualified Name:     kwc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */