import java.util.HashSet;
import java.util.Iterator;

public final class eyq
  extends HashSet<czb>
{
  private static final long serialVersionUID = 1L;
  
  public boolean contains(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof czb))) {
      return false;
    }
    paramObject = (czb)paramObject;
    Iterator localIterator = iterator();
    while (localIterator.hasNext()) {
      if (((czb)localIterator.next()).a((czb)paramObject)) {
        return true;
      }
    }
    return false;
  }
  
  public boolean remove(Object paramObject)
  {
    if ((paramObject == null) || (!(paramObject instanceof czb))) {
      return false;
    }
    czb localczb = (czb)paramObject;
    Iterator localIterator = iterator();
    do
    {
      if (!localIterator.hasNext()) {
        break;
      }
      paramObject = (czb)localIterator.next();
    } while (!localczb.a((czb)paramObject));
    for (;;)
    {
      if (paramObject != null) {
        return super.remove(paramObject);
      }
      return false;
      paramObject = null;
    }
  }
}

/* Location:
 * Qualified Name:     eyq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */