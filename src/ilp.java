import android.content.Context;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class ilp<K, T extends ilo<K>>
{
  private final HashMap<K, T> a = new HashMap();
  
  public ilp(Context paramContext, Class<T> paramClass)
  {
    paramContext = ilh.c(paramContext, paramClass).iterator();
    while (paramContext.hasNext())
    {
      paramClass = (ilo)paramContext.next();
      Object localObject = paramClass.a();
      if (a.put(localObject, paramClass) != null) {
        throw new IllegalArgumentException("Instantiating multiple extensions with the same key");
      }
    }
  }
  
  public T a(K paramK)
  {
    return (ilo)a.get(paramK);
  }
}

/* Location:
 * Qualified Name:     ilp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */