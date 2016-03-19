import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;

abstract class kzx<V, X extends Throwable, F, T>
  extends lai<V>
  implements Runnable
{
  lbb<? extends V> a;
  Class<X> b;
  F c;
  
  kzx(lbb<? extends V> paramlbb, Class<X> paramClass, F paramF)
  {
    a = ((lbb)fii.a(paramlbb));
    b = ((Class)fii.a(paramClass));
    c = fii.a(paramF);
  }
  
  static <X extends Throwable, V> lbb<V> a(lbb<? extends V> paramlbb, Class<X> paramClass, lap<? super X, ? extends V> paramlap, Executor paramExecutor)
  {
    paramClass = new kzy(paramlbb, paramClass, paramlap);
    fii.a(paramExecutor);
    fii.a(paramClass);
    if (paramExecutor == lbh.a) {}
    for (;;)
    {
      paramlbb.a(paramClass, paramExecutor);
      return paramClass;
      paramExecutor = new lbf(paramExecutor, paramClass);
    }
  }
  
  abstract T a(F paramF, X paramX);
  
  protected final void a()
  {
    a(a);
    a = null;
    b = null;
    c = null;
  }
  
  abstract void a(T paramT);
  
  public final void run()
  {
    int k = 1;
    Object localObject3 = null;
    Object localObject1 = a;
    localClass = b;
    localObject4 = c;
    int i;
    int j;
    if (localObject1 == null)
    {
      i = 1;
      if (localClass != null) {
        break label61;
      }
      j = 1;
      label37:
      if (localObject4 != null) {
        break label66;
      }
    }
    for (;;)
    {
      if ((k | j | i | isCancelled()) == 0) {
        break label71;
      }
      return;
      i = 0;
      break;
      label61:
      j = 0;
      break label37;
      label66:
      k = 0;
    }
    label71:
    a = null;
    b = null;
    c = null;
    try
    {
      localObject1 = aal.a((Future)localObject1);
      localObject3 = localObject1;
      localObject1 = null;
    }
    catch (ExecutionException localExecutionException)
    {
      Object localObject2;
      for (;;)
      {
        localObject2 = (Throwable)fii.a(localExecutionException.getCause());
      }
      if (localClass.isInstance(localObject2)) {
        break label149;
      }
      a((Throwable)localObject2);
      return;
      try
      {
        localObject2 = a(localObject4, (Throwable)localObject2);
        a(localObject2);
        return;
      }
      catch (Throwable localThrowable1)
      {
        a(localThrowable1);
        return;
      }
    }
    catch (Throwable localThrowable2)
    {
      for (;;) {}
    }
    if (localObject1 == null)
    {
      b(localObject3);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     kzx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */