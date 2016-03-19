import android.os.SystemClock;

public final class ezj
{
  private final long a = SystemClock.elapsedRealtime();
  private final String b;
  private long c = a;
  
  public ezj(String paramString)
  {
    b = paramString;
  }
  
  public void a(String paramString)
  {
    long l1 = SystemClock.elapsedRealtime();
    long l2 = a;
    long l3 = c;
    c = l1;
    ezi.c("Babel_timeline", "%s: %s in %d ms, total: %d ms", new Object[] { b, paramString, Long.valueOf(l1 - l3), Long.valueOf(l1 - l2) });
  }
}

/* Location:
 * Qualified Name:     ezj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */