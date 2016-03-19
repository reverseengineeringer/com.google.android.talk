import java.util.concurrent.Callable;

final class lbp
  extends lba
{
  private final Callable<V> d;
  
  lbp(Callable<V> paramCallable)
  {
    Object localObject;
    d = ((Callable)fii.a(localObject));
  }
  
  void a()
  {
    if (!c.isDone()) {}
    try
    {
      c.b(d.call());
      return;
    }
    catch (Throwable localThrowable)
    {
      c.a(localThrowable);
    }
  }
  
  boolean b()
  {
    return c.c();
  }
}

/* Location:
 * Qualified Name:     lbp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */