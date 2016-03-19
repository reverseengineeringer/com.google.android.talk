import android.os.Process;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Locale;

public final class hlm
{
  private final hli<hln> a = new hli(500);
  private final Object b = new Object();
  
  public void a(int paramInt, String paramString1, String paramString2)
  {
    for (;;)
    {
      synchronized (b)
      {
        hln localhln = (hln)a.b();
        if (localhln == null)
        {
          localhln = new hln();
          localhln.a(Process.myTid(), paramInt, System.currentTimeMillis(), paramString1, paramString2);
          a.a(localhln);
          return;
        }
      }
    }
  }
  
  public void a(PrintWriter paramPrintWriter)
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US);
    int j = Process.myPid();
    Object localObject = b;
    int i = 0;
    try
    {
      while (i < a.a())
      {
        hln localhln = (hln)a.a(i);
        paramPrintWriter.println(String.format("%s %5d %5d %s %s: %s", new Object[] { localSimpleDateFormat.format(Long.valueOf(c)), Integer.valueOf(j), Integer.valueOf(a), b, d, e }));
        i += 1;
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     hlm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */