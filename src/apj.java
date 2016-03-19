import android.content.Context;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class apj
{
  private final apo a;
  private final apk b = new apk();
  
  public apj(Context paramContext, ic<List<Exception>> paramic)
  {
    this(new apo(paramContext, paramic));
  }
  
  private apj(apo paramapo)
  {
    a = paramapo;
  }
  
  public List<Class<?>> a(Class<?> paramClass)
  {
    try
    {
      paramClass = a.b(paramClass);
      return paramClass;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <A> List<apg<A, ?>> a(A paramA)
  {
    try
    {
      Object localObject3 = paramA.getClass();
      Object localObject2 = b.a((Class)localObject3);
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = Collections.unmodifiableList(a.a((Class)localObject3));
        b.a((Class)localObject3, (List)localObject1);
      }
      int j = ((List)localObject1).size();
      localObject2 = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        localObject3 = (apg)((List)localObject1).get(i);
        if (((apg)localObject3).a(paramA)) {
          ((List)localObject2).add(localObject3);
        }
        i += 1;
      }
      return (List<apg<A, ?>>)localObject2;
    }
    finally {}
  }
  
  public <Model, Data> void a(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    try
    {
      a.a(paramClass, paramClass1, paramapi);
      b.a();
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <Model, Data> void b(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    try
    {
      a.b(paramClass, paramClass1, paramapi);
      b.a();
      return;
    }
    finally
    {
      paramClass = finally;
      throw paramClass;
    }
  }
  
  public <Model, Data> void c(Class<Model> paramClass, Class<Data> paramClass1, api<Model, Data> paramapi)
  {
    try
    {
      paramClass = a.c(paramClass, paramClass1, paramapi).iterator();
      while (paramClass.hasNext()) {
        paramClass.next();
      }
      b.a();
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     apj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */