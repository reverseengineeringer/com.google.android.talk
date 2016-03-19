import com.google.common.collect.MapMakerInternalMap;
import java.util.AbstractSet;
import java.util.ArrayList;

public abstract class kvn<E>
  extends AbstractSet<E>
{
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
 * Qualified Name:     kvn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */