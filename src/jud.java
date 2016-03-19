import android.os.Build.VERSION;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

public final class jud
{
  static final AtomicLong a;
  static final List<jtn> b = new ArrayList();
  static jtn c;
  private static final imx d = new imx("tiktok_systrace", (byte)0);
  private static final ThreadLocal<jtn> e;
  private static final Runnable f = new jue();
  private static boolean g;
  
  static
  {
    a = new AtomicLong(1L);
    e = new ThreadLocal();
  }
  
  public static jtm a(String paramString)
  {
    jtn localjtn = a();
    b(localjtn);
    paramString = localjtn.a(paramString);
    a(paramString);
    return new jtm(paramString);
  }
  
  static jtn a()
  {
    return (jtn)e.get();
  }
  
  static void a(jtn paramjtn)
  {
    if ((paramjtn == null) || (paramjtn.d())) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramjtn, bool);
      return;
    }
  }
  
  private static void a(jtn paramjtn, boolean paramBoolean)
  {
    int i = Build.VERSION.SDK_INT;
    e.set(paramjtn);
    if ((paramBoolean) && (aal.v()))
    {
      b.add(paramjtn);
      aal.a(f);
    }
  }
  
  public static boolean a(jrw paramjrw)
  {
    fii.a(paramjrw);
    return a() != null;
  }
  
  public static void b()
  {
    if (!g) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "async trace was not properly paused");
      if ((e.get() != null) || (c == null)) {
        break;
      }
      int i = Build.VERSION.SDK_INT;
      e.set(c);
      g = true;
      return;
    }
    g = false;
  }
  
  public static void b(String paramString)
  {
    jtn localjtn = a();
    b(localjtn);
    localjtn.b(paramString);
    a(localjtn.b(), localjtn.d());
  }
  
  private static void b(jtn paramjtn)
  {
    if (paramjtn == null) {
      throw new IllegalStateException("Was supposed to have a trace - did you neglect to propagate or create one? See http://go/tiktok-tracing for more details.");
    }
  }
  
  public static void c()
  {
    if (g)
    {
      fii.a(c, "current async trace should not be null");
      int i = Build.VERSION.SDK_INT;
      e.set(null);
      g = false;
    }
  }
}

/* Location:
 * Qualified Name:     jud
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */