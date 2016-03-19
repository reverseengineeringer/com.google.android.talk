import android.content.Context;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public class imb<T extends ima>
{
  private final Context a;
  private final Class b;
  private HashMap<Class, List<T>> c;
  
  public imb(Context paramContext, Class paramClass)
  {
    a = paramContext;
    b = paramClass;
  }
  
  private void a()
  {
    try
    {
      if (c == null)
      {
        c = new HashMap();
        Iterator localIterator = ilh.c(a, b).iterator();
        while (localIterator.hasNext())
        {
          ima localima = (ima)localIterator.next();
          Class localClass = localima.a();
          List localList = (List)c.get(localClass);
          Object localObject1 = localList;
          if (localList == null)
          {
            localObject1 = new ArrayList();
            c.put(localClass, localObject1);
          }
          ((List)localObject1).add(localima);
        }
      }
    }
    finally {}
  }
  
  public List<T> a(Class paramClass)
  {
    try
    {
      a();
      paramClass = (List)c.get(paramClass);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
}

/* Location:
 * Qualified Name:     imb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */