import android.os.Bundle;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public final class hus
{
  static final long a = TimeUnit.DAYS.toMillis(1L);
  juc b;
  private final int c;
  private final Exception d;
  private final String e;
  private final long f;
  private int g = hut.c;
  private Bundle h;
  private byte[] i;
  
  public hus(int paramInt, Exception paramException, String paramString)
  {
    c = paramInt;
    d = paramException;
    e = paramString;
    f = System.currentTimeMillis();
  }
  
  hus(int paramInt, Exception paramException, String paramString, byte[] paramArrayOfByte, long paramLong)
  {
    c = paramInt;
    d = paramException;
    e = paramString;
    i = paramArrayOfByte;
    f = paramLong;
  }
  
  public hus(boolean paramBoolean) {}
  
  public static boolean a(hus paramhus)
  {
    return (paramhus != null) && (paramhus.f());
  }
  
  public int a()
  {
    return c;
  }
  
  void a(int paramInt)
  {
    g = paramInt;
  }
  
  public Exception b()
  {
    return d;
  }
  
  public String c()
  {
    return e;
  }
  
  public Bundle d()
  {
    if (i != null)
    {
      ClassLoader localClassLoader = getClass().getClassLoader();
      h = ((Bundle)aal.a(i, localClassLoader));
      h.setClassLoader(localClassLoader);
      i = null;
    }
    if (h == null) {
      h = new Bundle();
    }
    return h;
  }
  
  byte[] e()
  {
    i();
    return i;
  }
  
  public boolean f()
  {
    return c != 200;
  }
  
  long g()
  {
    return f;
  }
  
  boolean h()
  {
    return System.currentTimeMillis() - f > a;
  }
  
  void i()
  {
    if (h == null) {
      return;
    }
    i = aal.a(h);
    h = null;
  }
  
  int j()
  {
    return g;
  }
  
  public String toString()
  {
    if (f()) {
      return String.format(Locale.getDefault(), "TaskResult(message=%s, age=%s, errorCode=%d, exception=%s)", new Object[] { e, aal.c(f), Integer.valueOf(c), d });
    }
    int j;
    String str;
    if (h != null)
    {
      j = h.size();
      str = 19 + "Bundle(" + j + ")";
    }
    for (;;)
    {
      return String.format(Locale.getDefault(), "TaskResult(message=%s, age=%s, extras=%s)", new Object[] { e, aal.c(f), str });
      if (i != null)
      {
        j = i.length;
        str = 17 + "byte[" + j + "]";
      }
      else
      {
        str = "null";
      }
    }
  }
}

/* Location:
 * Qualified Name:     hus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */