import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class koe
{
  private final koi a = koi.a;
  private boolean b;
  private long c;
  private long d;
  
  private long b()
  {
    if (b) {
      return a.a() - d + c;
    }
    return c;
  }
  
  public long a(TimeUnit paramTimeUnit)
  {
    return paramTimeUnit.convert(b(), TimeUnit.NANOSECONDS);
  }
  
  public koe a()
  {
    if (!b) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "This stopwatch is already running.");
      b = true;
      d = a.a();
      return this;
    }
  }
  
  public String toString()
  {
    long l = b();
    if (TimeUnit.DAYS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
      localObject = TimeUnit.DAYS;
    }
    double d1;
    Locale localLocale;
    for (;;)
    {
      d1 = l / TimeUnit.NANOSECONDS.convert(1L, (TimeUnit)localObject);
      localLocale = Locale.ROOT;
      switch (kof.a[localObject.ordinal()])
      {
      default: 
        throw new AssertionError();
        if (TimeUnit.HOURS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.HOURS;
        } else if (TimeUnit.MINUTES.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.MINUTES;
        } else if (TimeUnit.SECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.SECONDS;
        } else if (TimeUnit.MILLISECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.MILLISECONDS;
        } else if (TimeUnit.MICROSECONDS.convert(l, TimeUnit.NANOSECONDS) > 0L) {
          localObject = TimeUnit.MICROSECONDS;
        } else {
          localObject = TimeUnit.NANOSECONDS;
        }
        break;
      }
    }
    Object localObject = "ns";
    for (;;)
    {
      return String.format(localLocale, "%.4g %s", new Object[] { Double.valueOf(d1), localObject });
      localObject = "μs";
      continue;
      localObject = "ms";
      continue;
      localObject = "s";
      continue;
      localObject = "min";
      continue;
      localObject = "h";
      continue;
      localObject = "d";
    }
  }
}

/* Location:
 * Qualified Name:     koe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */