import android.os.SystemClock;

public final class fmt
  implements fmr
{
  private static fmt a;
  
  public static fmr c()
  {
    try
    {
      if (a == null) {
        a = new fmt();
      }
      fmt localfmt = a;
      return localfmt;
    }
    finally {}
  }
  
  public long a()
  {
    return System.currentTimeMillis();
  }
  
  public long b()
  {
    return SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     fmt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */