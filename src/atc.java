import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class atc
{
  private final List<atd<?, ?>> a = new ArrayList();
  
  public <Z, R> atb<Z, R> a(Class<Z> paramClass, Class<R> paramClass1)
  {
    try
    {
      if (paramClass1.isAssignableFrom(paramClass)) {}
      atd localatd;
      for (paramClass = ate.a;; paramClass = a)
      {
        return paramClass;
        Iterator localIterator = a.iterator();
        do
        {
          if (!localIterator.hasNext()) {
            break;
          }
          localatd = (atd)localIterator.next();
        } while (!localatd.a(paramClass, paramClass1));
      }
      paramClass = String.valueOf(paramClass);
      paramClass1 = String.valueOf(paramClass1);
      throw new IllegalArgumentException(String.valueOf(paramClass).length() + 47 + String.valueOf(paramClass1).length() + "No transcoder registered to transcode from " + paramClass + " to " + paramClass1);
    }
    finally {}
  }
  
  public <Z, R> void a(Class<Z> paramClass, Class<R> paramClass1, atb<Z, R> paramatb)
  {
    try
    {
      a.add(new atd(paramClass, paramClass1, paramatb));
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <Z, R> List<Class<R>> b(Class<Z> paramClass, Class<R> paramClass1)
  {
    try
    {
      ArrayList localArrayList = new ArrayList();
      if (paramClass1.isAssignableFrom(paramClass)) {
        localArrayList.add(paramClass1);
      }
      for (;;)
      {
        return localArrayList;
        Iterator localIterator = a.iterator();
        while (localIterator.hasNext()) {
          if (((atd)localIterator.next()).a(paramClass, paramClass1)) {
            localArrayList.add(paramClass1);
          }
        }
      }
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     atc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */