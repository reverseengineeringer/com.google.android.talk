import com.google.common.cache.LocalCache;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentMap;

public abstract class kom<T>
  extends AbstractSet<T>
{
  final ConcurrentMap<?, ?> a;
  
  kom(ConcurrentMap<?, ?> paramConcurrentMap)
  {
    ConcurrentMap localConcurrentMap;
    a = localConcurrentMap;
  }
  
  public void clear()
  {
    a.clear();
  }
  
  public boolean isEmpty()
  {
    return a.isEmpty();
  }
  
  public int size()
  {
    return a.size();
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
 * Qualified Name:     kom
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */