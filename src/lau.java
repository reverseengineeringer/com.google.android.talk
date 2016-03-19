import java.util.concurrent.Executor;

public final class lau
  extends aal
{
  private static final lap<lbb<Object>, Object> vi = new lav();
  
  public static <V> lbb<V> a(Throwable paramThrowable)
  {
    fii.a(paramThrowable);
    return new lay(paramThrowable);
  }
  
  public static <V, X extends Throwable> lbb<V> a(lbb<? extends V> paramlbb, Class<X> paramClass, lap<? super X, ? extends V> paramlap, Executor paramExecutor)
  {
    return kzx.a(paramlbb, paramClass, paramlap, paramExecutor);
  }
  
  public static <I, O> lbb<O> a(lbb<I> paramlbb, knj<? super I, ? extends O> paramknj)
  {
    return lan.a(paramlbb, paramknj);
  }
  
  public static <V> void a(lbb<V> paramlbb, lat<? super V> paramlat, Executor paramExecutor)
  {
    fii.a(paramlat);
    paramlbb.a(new law(paramlbb, paramlat), paramExecutor);
  }
  
  public static <V> lbb<V> g(V paramV)
  {
    if (paramV == null) {
      return laz.a;
    }
    return new laz(paramV);
  }
}

/* Location:
 * Qualified Name:     lau
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */