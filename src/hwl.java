import android.os.Handler;

final class hwl
  implements evf, Runnable
{
  final Runnable a;
  private final long c;
  private juc d;
  
  hwl(hwj paramhwj, Runnable paramRunnable, long paramLong)
  {
    a = paramRunnable;
    c = 0L;
  }
  
  void a()
  {
    d = juc.a();
    aal.a(this, c);
  }
  
  void b()
  {
    aal.y().removeCallbacks(this);
  }
  
  public void c()
  {
    b();
    b.b(this);
  }
  
  public void run()
  {
    juc.a(d, new hwm(this)).run();
  }
}

/* Location:
 * Qualified Name:     hwl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */