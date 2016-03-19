import com.google.common.cache.LocalCache;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentMap;

public final class kpt
  extends AbstractCollection<V>
{
  private final ConcurrentMap<?, ?> b;
  
  public kpt(ConcurrentMap<?, ?> paramConcurrentMap)
  {
    ConcurrentMap localConcurrentMap;
    b = localConcurrentMap;
  }
  
  public void clear()
  {
    b.clear();
  }
  
  public boolean contains(Object paramObject)
  {
    return b.containsValue(paramObject);
  }
  
  public boolean isEmpty()
  {
    return b.isEmpty();
  }
  
  public Iterator<V> iterator()
  {
    return new kpr(a);
  }
  
  public int size()
  {
    return b.size();
  }
  
  public Object[] toArray()
  {
    return LocalCache.a(this).toArray();
  }
  
  public <E> E[] toArray(E[] paramArrayOfE)
  {
    return LocalCache.a(this).toArray(paramArrayOfE);
  }
}

/* Location:
 * Qualified Name:     kpt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */