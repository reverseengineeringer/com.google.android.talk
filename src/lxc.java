import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map.Entry;

final class lxc
  extends AbstractSet<Map.Entry<K, V>>
{
  lxc(lwv paramlwv) {}
  
  public void clear()
  {
    a.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    Object localObject = (Map.Entry)paramObject;
    paramObject = a.get(((Map.Entry)localObject).getKey());
    localObject = ((Map.Entry)localObject).getValue();
    return (paramObject == localObject) || ((paramObject != null) && (paramObject.equals(localObject)));
  }
  
  public Iterator<Map.Entry<K, V>> iterator()
  {
    return new lxb(a);
  }
  
  public boolean remove(Object paramObject)
  {
    paramObject = (Map.Entry)paramObject;
    if (contains(paramObject))
    {
      a.remove(((Map.Entry)paramObject).getKey());
      return true;
    }
    return false;
  }
  
  public int size()
  {
    return a.size();
  }
}

/* Location:
 * Qualified Name:     lxc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */