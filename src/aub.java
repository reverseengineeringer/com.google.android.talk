import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class aub
{
  private final AtomicReference<avp> a = new AtomicReference();
  private final hq<avp, List<Class<?>>> b = new hq();
  
  public List<Class<?>> a(Class<?> paramClass1, Class<?> arg2)
  {
    Object localObject = (avp)a.getAndSet(null);
    if (localObject == null) {
      paramClass1 = new avp(paramClass1, ???);
    }
    synchronized (b)
    {
      localObject = (List)b.get(paramClass1);
      a.set(paramClass1);
      return (List<Class<?>>)localObject;
      ((avp)localObject).a(paramClass1, ???);
      paramClass1 = (Class<?>)localObject;
    }
  }
  
  public void a(Class<?> paramClass1, Class<?> paramClass2, List<Class<?>> paramList)
  {
    synchronized (b)
    {
      b.put(new avp(paramClass1, paramClass2), paramList);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     aub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */