import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

public final class aly
{
  final amh<amk, Object> a = new amh();
  final aml b = new aml();
  final Map<Class, NavigableMap<Integer, Integer>> c = new HashMap();
  final Map<Class, alx> d = new HashMap();
  final int e;
  int f;
  
  public aly(int paramInt)
  {
    e = paramInt;
  }
  
  private <T> alx<T> a(T paramT)
  {
    return b(paramT.getClass());
  }
  
  private <T> T a(amk paramamk)
  {
    return (T)a.a(paramamk);
  }
  
  private NavigableMap<Integer, Integer> a(Class<?> paramClass)
  {
    NavigableMap localNavigableMap = (NavigableMap)c.get(paramClass);
    Object localObject = localNavigableMap;
    if (localNavigableMap == null)
    {
      localObject = new TreeMap();
      c.put(paramClass, localObject);
    }
    return (NavigableMap<Integer, Integer>)localObject;
  }
  
  private boolean a(int paramInt, Integer paramInteger)
  {
    return (paramInteger != null) && ((b()) || (paramInteger.intValue() <= paramInt << 3));
  }
  
  private <T> alx<T> b(Class<T> paramClass)
  {
    alx localalx = (alx)d.get(paramClass);
    Object localObject = localalx;
    if (localalx == null) {
      if (!paramClass.equals(int[].class)) {
        break label51;
      }
    }
    for (localObject = new amj();; localObject = new amf())
    {
      d.put(paramClass, localObject);
      return (alx<T>)localObject;
      label51:
      if (!paramClass.equals(byte[].class)) {
        break;
      }
    }
    paramClass = String.valueOf(paramClass.getSimpleName());
    if (paramClass.length() != 0) {}
    for (paramClass = "No array pool found for: ".concat(paramClass);; paramClass = new String("No array pool found for: ")) {
      throw new IllegalArgumentException(paramClass);
    }
  }
  
  private void b(int paramInt, Class<?> paramClass)
  {
    paramClass = a(paramClass);
    Object localObject = (Integer)paramClass.get(Integer.valueOf(paramInt));
    if (localObject == null)
    {
      paramClass = String.valueOf("Tried to decrement empty size, size: ");
      localObject = String.valueOf(this);
      throw new NullPointerException(String.valueOf(paramClass).length() + 19 + String.valueOf(localObject).length() + paramClass + paramInt + ", this: " + (String)localObject);
    }
    if (((Integer)localObject).intValue() == 1)
    {
      paramClass.remove(Integer.valueOf(paramInt));
      return;
    }
    paramClass.put(Integer.valueOf(paramInt), Integer.valueOf(((Integer)localObject).intValue() - 1));
  }
  
  private boolean b()
  {
    return (f == 0) || (e / f >= 2);
  }
  
  private boolean b(int paramInt)
  {
    return paramInt <= e / 2;
  }
  
  private void c()
  {
    c(e);
  }
  
  private void c(int paramInt)
  {
    while (f > paramInt)
    {
      Object localObject = a.a();
      aal.a(localObject, "Argument must not be null");
      alx localalx = a(localObject);
      f -= localalx.a(localObject) * localalx.b();
      b(localalx.a(localObject), localObject.getClass());
      if (Log.isLoggable(localalx.a(), 2))
      {
        int i = localalx.a(localObject);
        new StringBuilder(20).append("evicted: ").append(i);
      }
    }
  }
  
  public <T> T a(int paramInt, Class<T> paramClass)
  {
    alx localalx = b(paramClass);
    try
    {
      Object localObject = (Integer)a(paramClass).ceilingKey(Integer.valueOf(paramInt));
      if (a(paramInt, (Integer)localObject)) {}
      for (localObject = b.a(((Integer)localObject).intValue(), paramClass);; localObject = b.a(paramInt, paramClass))
      {
        localObject = a((amk)localObject);
        if (localObject != null)
        {
          f -= localalx.a(localObject) * localalx.b();
          b(localalx.a(localObject), paramClass);
        }
        if (localObject == null) {
          break;
        }
        localalx.b(localObject);
        return (T)localObject;
      }
      if (!Log.isLoggable(localalx.a(), 2)) {
        break label169;
      }
    }
    finally {}
    new StringBuilder(27).append("Allocated ").append(paramInt).append(" bytes");
    label169:
    return (T)localalx.a(paramInt);
  }
  
  public void a()
  {
    try
    {
      c(0);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt >= 40) {}
    for (;;)
    {
      try
      {
        a();
        return;
      }
      finally {}
      if (paramInt >= 20) {
        c(e / 2);
      }
    }
  }
  
  public <T> void a(T paramT, Class<T> paramClass)
  {
    for (;;)
    {
      int i;
      try
      {
        alx localalx = b(paramClass);
        int j = localalx.a(paramT);
        boolean bool = b(j);
        if (!bool) {
          return;
        }
        amk localamk = b.a(j, paramClass);
        a.a(localamk, paramT);
        paramT = a(paramClass);
        paramClass = (Integer)paramT.get(Integer.valueOf(a));
        int k = a;
        if (paramClass == null)
        {
          i = 1;
          paramT.put(Integer.valueOf(k), Integer.valueOf(i));
          f += localalx.b() * j;
          c();
          continue;
        }
        i = paramClass.intValue();
      }
      finally {}
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     aly
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */