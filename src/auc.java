import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class auc
{
  private final List<aud<?, ?>> a = new ArrayList();
  
  public <T, R> List<ajb<T, R>> a(Class<T> paramClass, Class<R> paramClass1)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        aud localaud = (aud)localIterator.next();
        if (localaud.a(paramClass, paramClass1)) {
          localArrayList.add(b);
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  public <T, R> void a(ajb<T, R> paramajb, Class<T> paramClass, Class<R> paramClass1)
  {
    try
    {
      a.add(new aud(paramClass, paramClass1, paramajb));
      return;
    }
    finally
    {
      paramajb = finally;
      throw paramajb;
    }
  }
  
  public <T, R> List<Class<R>> b(Class<T> paramClass, Class<R> paramClass1)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext())
      {
        aud localaud = (aud)localIterator.next();
        if (localaud.a(paramClass, paramClass1)) {
          localArrayList.add(a);
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  public <T, R> void b(ajb<T, R> paramajb, Class<T> paramClass, Class<R> paramClass1)
  {
    try
    {
      a.add(0, new aud(paramClass, paramClass1, paramajb));
      return;
    }
    finally
    {
      paramajb = finally;
      throw paramajb;
    }
  }
}

/* Location:
 * Qualified Name:     auc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */