import java.util.Iterator;
import java.util.concurrent.ConcurrentMap;

public final class kpb
  extends kom<K>
{
  public kpb(ConcurrentMap<?, ?> paramConcurrentMap)
  {
    super(paramConcurrentMap, localConcurrentMap);
  }
  
  public boolean contains(Object paramObject)
  {
    return a.containsKey(paramObject);
  }
  
  public Iterator<K> iterator()
  {
    return new kpa(c);
  }
  
  public boolean remove(Object paramObject)
  {
    return a.remove(paramObject) != null;
  }
}

/* Location:
 * Qualified Name:     kpb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */