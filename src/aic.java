import java.util.concurrent.Callable;

final class aic
  implements Callable<Void>
{
  aic(aib paramaib) {}
  
  private Void a()
  {
    synchronized (a)
    {
      if (a.c == null) {
        return null;
      }
      a.c();
      if (a.b())
      {
        a.a();
        a.d = 0;
      }
      return null;
    }
  }
}

/* Location:
 * Qualified Name:     aic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */