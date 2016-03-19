import java.util.concurrent.Callable;

final class cvp
  implements Callable<Void>
{
  cvp(cvo paramcvo) {}
  
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
 * Qualified Name:     cvp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */