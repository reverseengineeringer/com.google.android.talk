import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public final class ajj
{
  private static final aji b = new ajk();
  private final Map<Class, aji> a = new HashMap();
  
  public <T> ajh<T> a(T paramT)
  {
    try
    {
      aal.a(paramT, "Argument must not be null");
      Object localObject2 = (aji)a.get(paramT.getClass());
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        Iterator localIterator = a.values().iterator();
        do
        {
          localObject1 = localObject2;
          if (!localIterator.hasNext()) {
            break;
          }
          localObject1 = (aji)localIterator.next();
        } while (!((aji)localObject1).a().isAssignableFrom(paramT.getClass()));
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = b;
      }
      paramT = ((aji)localObject2).a(paramT);
      return paramT;
    }
    finally {}
  }
  
  public void a(aji paramaji)
  {
    try
    {
      a.put(paramaji.a(), paramaji);
      return;
    }
    finally
    {
      paramaji = finally;
      throw paramaji;
    }
  }
}

/* Location:
 * Qualified Name:     ajj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */