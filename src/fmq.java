import android.os.SystemClock;

public final class fmq
{
  private final long a;
  private final int b;
  private final if<String, Long> c;
  
  public fmq()
  {
    a = 60000L;
    b = 10;
    c = new if(10);
  }
  
  public fmq(long paramLong)
  {
    a = paramLong;
    b = 1024;
    c = new if();
  }
  
  public Long a(String paramString)
  {
    long l2 = SystemClock.elapsedRealtime();
    long l1 = a;
    for (;;)
    {
      int i;
      try
      {
        if (c.size() >= b)
        {
          i = c.size() - 1;
          if (i >= 0)
          {
            if (l2 - ((Long)c.c(i)).longValue() > l1) {
              c.d(i);
            }
          }
          else
          {
            l1 /= 2L;
            new StringBuilder("The max capacity ").append(b).append(" is not enough. Current durationThreshold is: ").append(l1);
          }
        }
        else
        {
          paramString = (Long)c.put(paramString, Long.valueOf(l2));
          return paramString;
        }
      }
      finally {}
      i -= 1;
    }
  }
  
  public boolean b(String paramString)
  {
    for (;;)
    {
      try
      {
        if (c.remove(paramString) != null)
        {
          bool = true;
          return bool;
        }
      }
      finally {}
      boolean bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     fmq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */