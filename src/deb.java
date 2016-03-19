import java.io.PrintWriter;

public final class deb
{
  public final long a;
  private final String b;
  private final StackTraceElement[] c;
  
  public deb(String paramString)
  {
    b = paramString;
    c = new Exception().getStackTrace();
    a = System.currentTimeMillis();
  }
  
  public void a(int paramInt, PrintWriter paramPrintWriter, long paramLong)
  {
    long l1 = 0L;
    if (paramLong != 0L)
    {
      paramLong = a - paramLong;
      l1 = paramLong / 1000L;
      paramLong %= 1000L;
    }
    for (;;)
    {
      paramPrintWriter.write(String.format("@ %d; time %d [+%d.%03d] %s\n", new Object[] { Integer.valueOf(paramInt), Long.valueOf(a), Long.valueOf(l1), Long.valueOf(paramLong), b }));
      paramInt = 2;
      while (paramInt < c.length)
      {
        String str = String.valueOf(c[paramInt].toString());
        paramPrintWriter.write(String.valueOf(str).length() + 5 + "    " + str + "\n");
        paramInt += 1;
      }
      paramPrintWriter.write("\n");
      return;
      long l2 = 0L;
      paramLong = l1;
      l1 = l2;
    }
  }
}

/* Location:
 * Qualified Name:     deb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */