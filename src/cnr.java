import android.os.Handler;

final class cnr
  implements Runnable
{
  cnr(cnq paramcnq) {}
  
  public void run()
  {
    if (a.b > 0)
    {
      a.a();
      a.c.postDelayed(a.d, 2000L);
      return;
    }
    a.a = false;
  }
}

/* Location:
 * Qualified Name:     cnr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */