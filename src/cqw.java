import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.SystemClock;

final class cqw
  implements cqr
{
  private static final boolean a = false;
  private final SharedPreferences b;
  private final int c;
  
  static
  {
    imx localimx = ezi.h;
  }
  
  public cqw(SharedPreferences paramSharedPreferences, int paramInt)
  {
    b = paramSharedPreferences;
    c = paramInt;
  }
  
  private String b(String paramString)
  {
    if (paramString != null) {}
    for (boolean bool = true;; bool = false)
    {
      aen.a(bool);
      int i = c;
      return String.valueOf(paramString).length() + 12 + i + ":" + paramString;
    }
  }
  
  public void a(int paramInt1, String paramString, long paramLong, int paramInt2)
  {
    long l = b.getLong(b(paramString), 0L);
    if ((l > 0L) && (paramLong > l))
    {
      aen.a(paramInt1, System.currentTimeMillis(), c, new csn().a(paramInt2).c(paramLong - l));
      b.edit().remove(b(paramString)).apply();
      if (a)
      {
        paramString = String.valueOf(b(paramString));
        ezi.b("Babel_LatencyTracker", String.valueOf(paramString).length() + 95 + "Latency tracking ends for event " + paramString + " with event detail " + paramInt2 + ", duration " + (paramLong - l) + "ms", new Object[0]);
      }
    }
  }
  
  public void a(String paramString)
  {
    a(paramString, SystemClock.elapsedRealtime());
  }
  
  public void a(String paramString, long paramLong)
  {
    boolean bool;
    if (paramLong > 0L)
    {
      bool = true;
      aen.a(bool);
      b.edit().putLong(b(paramString), paramLong).apply();
      if (a)
      {
        paramString = String.valueOf(b(paramString));
        if (paramString.length() == 0) {
          break label85;
        }
      }
    }
    label85:
    for (paramString = "Latency tracking started for event ".concat(paramString);; paramString = new String("Latency tracking started for event "))
    {
      ezi.b("Babel_LatencyTracker", paramString, new Object[0]);
      return;
      bool = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     cqw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */