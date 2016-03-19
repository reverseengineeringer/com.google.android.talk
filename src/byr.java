import java.util.concurrent.TimeoutException;

final class byr
  implements Runnable
{
  byr(byp parambyp) {}
  
  public void run()
  {
    synchronized (a.c)
    {
      if (a.a >= 0)
      {
        a.a = -1;
        a.a(new TimeoutException());
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     byr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */