import android.content.Context;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class apo
{
  private static final apr a = new apr();
  private static final apg<Object, Object> b = new app();
  private final List<apq<?, ?>> c = new ArrayList();
  private final Context d;
  private final apr e;
  private final Set<apq<?, ?>> f = new HashSet();
  private final ic<List<Exception>> g;
  
  public apo(Context paramContext, ic<List<Exception>> paramic)
  {
    this(paramContext, paramic, a);
  }
  
  private apo(Context paramContext, ic<List<Exception>> paramic, apr paramapr)
  {
    g = paramic;
    d = paramContext.getApplicationContext();
    e = paramapr;
  }
  
  private <Model, Data> apg<Model, Data> a(apq<?, ?> paramapq)
  {
    return (apg)aal.a(b.a(d, this), "Argument must not be null");
  }
  
  private <Model, Data> void a(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi, boolean paramBoolean)
  {
    paramClass = new apq(paramClass, paramClass1, paramapi);
    paramClass1 = c;
    if (paramBoolean) {}
    for (int i = c.size();; i = 0)
    {
      paramClass1.add(i, paramClass);
      return;
    }
  }
  
  private <Model, Data> List<api<Model, Data>> b(Class<Model> paramClass, Class<Data> paramClass1)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        apq localapq = (apq)localIterator.next();
        if (localapq.a(paramClass, paramClass1))
        {
          localIterator.remove();
          localArrayList.add(b);
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  public <Model, Data> apg<Model, Data> a(Class<Model> paramClass, Class<Data> paramClass1)
  {
    ArrayList localArrayList;
    int i;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = c.iterator();
      i = 0;
      while (localIterator.hasNext())
      {
        apq localapq = (apq)localIterator.next();
        if (f.contains(localapq))
        {
          i = 1;
        }
        else if (localapq.a(paramClass, paramClass1))
        {
          f.add(localapq);
          localArrayList.add(a(localapq));
          f.remove(localapq);
        }
      }
      if (localArrayList.size() <= 1) {
        break label162;
      }
    }
    catch (Throwable paramClass)
    {
      f.clear();
      throw paramClass;
    }
    finally {}
    paramClass = new apm(localArrayList, g);
    for (;;)
    {
      return paramClass;
      label162:
      if (localArrayList.size() == 1)
      {
        paramClass = (apg)localArrayList.get(0);
      }
      else
      {
        if (i == 0) {
          break;
        }
        paramClass = b;
      }
    }
    throw new ax(paramClass, paramClass1);
  }
  
  <Model> List<apg<Model, ?>> a(Class<Model> paramClass)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        apq localapq = (apq)localIterator.next();
        if ((!f.contains(localapq)) && (localapq.a(paramClass)))
        {
          f.add(localapq);
          localArrayList.add(a(localapq));
          f.remove(localapq);
        }
      }
    }
    catch (Throwable paramClass)
    {
      f.clear();
      throw paramClass;
    }
    finally {}
    return localArrayList;
  }
  
  <Model, Data> void a(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    try
    {
      a(paramClass, paramClass1, paramapi, true);
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  List<Class<?>> b(Class<?> paramClass)
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        apq localapq = (apq)localIterator.next();
        if ((!localArrayList.contains(a)) && (localapq.a(paramClass))) {
          localArrayList.add(a);
        }
      }
    }
    finally {}
    return localArrayList;
  }
  
  <Model, Data> void b(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    try
    {
      a(paramClass, paramClass1, paramapi, false);
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  <Model, Data> List<api<Model, Data>> c(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    try
    {
      List localList = b(paramClass, paramClass1);
      a(paramClass, paramClass1, paramapi);
      return localList;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
}

/* Location:
 * Qualified Name:     apo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */