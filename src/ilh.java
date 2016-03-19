import android.content.Context;
import android.content.ContextWrapper;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

public final class ilh
{
  static final imw a = new imw("debug.binder.verification");
  private static final Object b = new Object();
  private static final ilm c = new ilm(new iln());
  private Context d;
  private ilh e;
  private String f;
  private final Map<Object, Object> g = new HashMap();
  private final Map<Object, List<?>> h = new HashMap();
  private final HashSet<Class<?>> i = new HashSet();
  private final ArrayList<ilq> j = new ArrayList();
  private boolean k;
  
  public ilh() {}
  
  public ilh(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ilh(Context paramContext, ilh paramilh)
  {
    d = paramContext;
    e = paramilh;
    f = paramContext.getClass().getName();
  }
  
  public static ilh a(Context paramContext, av paramav)
  {
    while (paramav != null)
    {
      ilh localilh = a(paramav);
      if (localilh != null) {
        return localilh;
      }
      paramav = paramav.getParentFragment();
    }
    return b(paramContext);
  }
  
  private static ilh a(Object paramObject)
  {
    ilh localilh1;
    if ((paramObject instanceof ilk))
    {
      ilh localilh2 = ((ilk)paramObject).getBinder();
      localilh1 = localilh2;
      if (localilh2 == null)
      {
        paramObject = String.valueOf(paramObject);
        throw new IllegalStateException(String.valueOf(paramObject).length() + 43 + "BinderContext must not return null Binder: " + (String)paramObject);
      }
    }
    else
    {
      localilh1 = null;
    }
    return localilh1;
  }
  
  public static <T> T a(Context paramContext, Class<T> paramClass)
  {
    return (T)b(paramContext).a(paramClass);
  }
  
  private Object a(String paramString, Object paramObject)
  {
    Object localObject1 = this;
    if (d == null) {
      throw new IllegalStateException("Binder not initialized yet.");
    }
    for (;;)
    {
      try
      {
        Object localObject2 = g.get(paramString);
        if ((localObject2 != null) && (localObject2 != b)) {
          return localObject2;
        }
        if (localObject2 == null) {
          g.put(paramString, b);
        }
        localObject2 = e;
        localObject1 = localObject2;
        if (localObject2 != null) {
          continue;
        }
        return paramObject;
      }
      finally {}
    }
  }
  
  public static String a(Context paramContext, String paramString)
  {
    return (String)b(paramContext).a(paramString, null);
  }
  
  private void a(Object paramObject1, Object paramObject2)
  {
    Object localObject;
    try
    {
      b();
      localObject = g.get(paramObject1);
      if (localObject == null) {
        break label139;
      }
      if (localObject == b)
      {
        paramObject1 = String.valueOf(paramObject1);
        throw new ilj(String.valueOf(paramObject1).length() + 51 + "Bind call too late - someone already tried to get: " + (String)paramObject1);
      }
    }
    finally {}
    paramObject1 = String.valueOf(paramObject1);
    paramObject2 = String.valueOf(localObject);
    throw new ili(String.valueOf(paramObject1).length() + 21 + String.valueOf(paramObject2).length() + "Duplicate binding: " + (String)paramObject1 + ", " + (String)paramObject2);
    label139:
    g.put(paramObject1, paramObject2);
  }
  
  public static boolean a(Context paramContext, String paramString, boolean paramBoolean)
  {
    return ((Boolean)b(paramContext).a(paramString, Boolean.valueOf(paramBoolean))).booleanValue();
  }
  
  public static int b(Context paramContext, String paramString)
  {
    return ((Integer)b(paramContext).a(paramString, Integer.valueOf(300))).intValue();
  }
  
  public static ilh b(Context paramContext)
  {
    Context localContext2 = paramContext.getApplicationContext();
    int m = 0;
    Context localContext1 = paramContext;
    paramContext = a(localContext1);
    if (paramContext != null) {
      return paramContext;
    }
    if (localContext1 == localContext2) {}
    for (int n = 1;; n = 0)
    {
      m |= n;
      if (!(localContext1 instanceof ContextWrapper)) {
        break;
      }
      localContext1 = ((ContextWrapper)localContext1).getBaseContext();
      paramContext = localContext1;
      if (localContext1 != null) {
        break label76;
      }
      throw new IllegalStateException("Invalid ContextWrapper -- If this is a Robolectric test, have you called ActivityController.create()?");
    }
    if (m == 0) {}
    for (paramContext = localContext2;; paramContext = null)
    {
      label76:
      localContext1 = paramContext;
      if (paramContext != null) {
        break;
      }
      return c(localContext2);
    }
  }
  
  public static <T> T b(Context paramContext, Class<T> paramClass)
  {
    return (T)b(paramContext).b(paramClass);
  }
  
  private void b()
  {
    if (k) {
      throw new ilj("This binder is sealed for modification");
    }
  }
  
  private void b(Object paramObject1, Object paramObject2)
  {
    try
    {
      b();
      List localList = (List)h.get(paramObject1);
      Object localObject = localList;
      if (localList == null)
      {
        localObject = new ArrayList();
        h.put(paramObject1, localObject);
      }
      ((List)localObject).add(paramObject2);
      return;
    }
    finally {}
  }
  
  public static ilh c(Context paramContext)
  {
    return c.a(paramContext.getApplicationContext());
  }
  
  public static <T> List<T> c(Context paramContext, Class<T> paramClass)
  {
    return b(paramContext).c(paramClass);
  }
  
  private <T> T d(Class<T> paramClass)
  {
    int m = 0;
    try
    {
      aen.a(paramClass);
      if (d == null) {
        throw new IllegalStateException("Binder not initialized yet.");
      }
    }
    finally {}
    Object localObject1 = g.get(paramClass);
    if (localObject1 != null)
    {
      paramClass = b;
      if (localObject1 != paramClass) {}
      for (;;)
      {
        return (T)localObject1;
        localObject1 = null;
      }
    }
    boolean bool = k;
    k = false;
    for (;;)
    {
      try
      {
        int n = j.size();
        if (m < n)
        {
          ((ilq)j.get(m)).a(d, paramClass, this);
          localObject1 = g.get(paramClass);
          if (localObject1 == null) {
            break label198;
          }
          k = bool;
          break;
        }
        k = bool;
        Object localObject2 = g.get(paramClass);
        localObject1 = localObject2;
        if (localObject2 != null) {
          break;
        }
        g.put(paramClass, b);
        localObject1 = localObject2;
        break;
      }
      finally
      {
        k = bool;
      }
      label198:
      m += 1;
    }
  }
  
  private <T> List<T> e(Class<T> paramClass)
  {
    int m = 0;
    try
    {
      aen.a(paramClass);
      if (d == null) {
        throw new IllegalStateException("Binder not initialized yet.");
      }
    }
    finally {}
    Object localObject = (List)h.get(paramClass);
    if (localObject == null)
    {
      localObject = new ArrayList();
      h.put(paramClass, localObject);
    }
    for (;;)
    {
      boolean bool;
      if (!i.contains(paramClass))
      {
        i.add(paramClass);
        bool = k;
        k = false;
      }
      try
      {
        int n = j.size();
        while (m < n)
        {
          ((ilq)j.get(m)).a(d, paramClass, this);
          m += 1;
        }
        k = bool;
        return (List<T>)localObject;
      }
      finally
      {
        k = bool;
      }
    }
  }
  
  public ilh a(ilq paramilq)
  {
    try
    {
      b();
      j.add(paramilq);
      return this;
    }
    finally
    {
      paramilq = finally;
      throw paramilq;
    }
  }
  
  public <T> ilh a(Class<T> paramClass, T paramT)
  {
    a(paramClass, paramT);
    return this;
  }
  
  public <T> ilh a(Class<T> paramClass, T... paramVarArgs)
  {
    int m = 0;
    while (m < paramVarArgs.length)
    {
      b(paramClass, paramVarArgs[m]);
      m += 1;
    }
    return this;
  }
  
  public ilh a(String paramString)
  {
    a(paramString, Integer.valueOf(3));
    return this;
  }
  
  public ilh a(String paramString1, String paramString2)
  {
    a(paramString1, paramString2);
    return this;
  }
  
  public <T> T a(Class<T> paramClass)
  {
    aen.a(paramClass);
    Object localObject = b(paramClass);
    if (localObject != null) {
      return (T)localObject;
    }
    localObject = new StringBuilder();
    ((StringBuilder)localObject).append("Unbound type: ").append(paramClass.getName()).append("\nSearched binders:\n");
    paramClass = this;
    for (;;)
    {
      ((StringBuilder)localObject).append(f);
      paramClass = e;
      if (paramClass == null) {
        break;
      }
      ((StringBuilder)localObject).append(" ->\n");
    }
    paramClass = ((StringBuilder)localObject).toString();
    localObject = new IllegalStateException(paramClass);
    Log.e("Binder", paramClass, (Throwable)localObject);
    throw ((Throwable)localObject);
  }
  
  public void a()
  {
    try
    {
      k = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(Context paramContext)
  {
    d = paramContext;
    if (f == null) {
      f = paramContext.getClass().getName();
    }
  }
  
  public void a(ilh paramilh)
  {
    e = paramilh;
  }
  
  public boolean a(String paramString, boolean paramBoolean)
  {
    return ((Boolean)a(paramString, Boolean.valueOf(paramBoolean))).booleanValue();
  }
  
  public <T> ilh b(Class<T> paramClass, T paramT)
  {
    b(paramClass, paramT);
    return this;
  }
  
  public <T> T b(Class<T> paramClass)
  {
    aen.a(paramClass);
    Object localObject1 = this;
    Object localObject2;
    do
    {
      localObject2 = ((ilh)localObject1).d(paramClass);
      if (localObject2 != null) {
        return (T)localObject2;
      }
      localObject2 = e;
      localObject1 = localObject2;
    } while (localObject2 != null);
    return null;
  }
  
  public void b(String paramString)
  {
    f = paramString;
  }
  
  public <T> List<T> c(Class<T> paramClass)
  {
    aen.a(paramClass);
    ArrayList localArrayList = new ArrayList();
    Object localObject = this;
    ilh localilh;
    do
    {
      localArrayList.addAll(((ilh)localObject).e(paramClass));
      localilh = e;
      localObject = localilh;
    } while (localilh != null);
    return localArrayList;
  }
}

/* Location:
 * Qualified Name:     ilh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */