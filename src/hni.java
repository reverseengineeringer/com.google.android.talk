import android.os.SystemClock;

public final class hni
{
  private final Object a = new Object();
  private final int b;
  private int c = 0;
  private long d = 0L;
  
  public hni(int paramInt)
  {
    b = paramInt;
  }
  
  public boolean a()
  {
    synchronized (a)
    {
      if (SystemClock.elapsedRealtime() - d > 1000L) {
        return false;
      }
      if (c >= b) {
        return true;
      }
    }
    return false;
  }
  
  public void b()
  {
    synchronized (a)
    {
      c += 1;
      long l = SystemClock.elapsedRealtime();
      if (l - d > 1000L)
      {
        c = 0;
        d = l;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     hni
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */