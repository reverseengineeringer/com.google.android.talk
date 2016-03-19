import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class ire
{
  private final Map<String, irf> a = new ira();
  private final Map<Field, irf> b = new ira();
  private final Object c;
  
  public ire(Object paramObject)
  {
    c = paramObject;
  }
  
  public void a()
  {
    Iterator localIterator = a.entrySet().iterator();
    Map.Entry localEntry;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      ((Map)c).put(localEntry.getKey(), ((irf)localEntry.getValue()).a());
    }
    localIterator = b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      iry.a((Field)localEntry.getKey(), c, ((irf)localEntry.getValue()).a());
    }
  }
  
  public void a(Field paramField, Class<?> paramClass, Object paramObject)
  {
    irf localirf2 = (irf)b.get(paramField);
    irf localirf1 = localirf2;
    if (localirf2 == null)
    {
      localirf1 = new irf(paramClass);
      b.put(paramField, localirf1);
    }
    localirf1.a(paramClass, paramObject);
  }
}

/* Location:
 * Qualified Name:     ire
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */