import java.lang.reflect.UndeclaredThrowableException;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

abstract class lan<I, O, F, T>
  extends lai<O>
  implements Runnable
{
  lbb<? extends I> a;
  F b;
  
  lan(lbb<? extends I> paramlbb, F paramF)
  {
    a = ((lbb)fii.a(paramlbb));
    b = fii.a(paramF);
  }
  
  static <I, O> lbb<O> a(lbb<I> paramlbb, knj<? super I, ? extends O> paramknj)
  {
    fii.a(paramknj);
    paramknj = new lao(paramlbb, paramknj);
    paramlbb.a(paramknj, lbh.a);
    return paramknj;
  }
  
  abstract T a(F paramF, I paramI);
  
  protected final void a()
  {
    a(a);
    a = null;
    b = null;
  }
  
  abstract void a(T paramT);
  
  public final void run()
  {
    int i = 1;
    Object localObject2 = a;
    Object localObject1 = b;
    boolean bool2 = isCancelled();
    boolean bool1;
    if (localObject2 == null)
    {
      bool1 = true;
      if (localObject1 != null) {
        break label45;
      }
    }
    for (;;)
    {
      if ((i | bool1 | bool2) == 0) {
        break label50;
      }
      return;
      bool1 = false;
      break;
      label45:
      i = 0;
    }
    label50:
    a = null;
    b = null;
    try
    {
      localObject2 = aal.a((Future)localObject2);
      return;
    }
    catch (CancellationException localCancellationException)
    {
      try
      {
        localObject1 = a(localObject1, localObject2);
        a(localObject1);
        return;
      }
      catch (UndeclaredThrowableException localUndeclaredThrowableException)
      {
        a(localUndeclaredThrowableException.getCause());
        return;
      }
      catch (Throwable localThrowable)
      {
        a(localThrowable);
      }
      localCancellationException = localCancellationException;
      cancel(false);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      a(localExecutionException.getCause());
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      a(localRuntimeException);
      return;
    }
    catch (Error localError)
    {
      a(localError);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     lan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */