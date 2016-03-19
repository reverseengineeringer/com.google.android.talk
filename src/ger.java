import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

public class ger
{
  private static final String a = ger.class.getSimpleName();
  private static final long b = TimeUnit.SECONDS.toMillis(1L);
  private static ger c;
  private final Context d;
  private final Handler e;
  private final Runnable f = new ges(this);
  private final Object g = new Object();
  private ArrayList<String> h = null;
  private ArrayList<String> i = null;
  
  private ger(Context paramContext)
  {
    this((Context)aal.d(paramContext), new Handler(Looper.getMainLooper()));
  }
  
  private ger(Context paramContext, Handler paramHandler)
  {
    d = paramContext;
    e = paramHandler;
  }
  
  /* Error */
  public static ger a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: aload_0
    //   4: invokestatic 52	aal:d	(Ljava/lang/Object;)Ljava/lang/Object;
    //   7: pop
    //   8: getstatic 94	android/os/Build$VERSION:SDK_INT	I
    //   11: istore_1
    //   12: iload_1
    //   13: bipush 14
    //   15: if_icmpge +10 -> 25
    //   18: aconst_null
    //   19: astore_0
    //   20: ldc 2
    //   22: monitorexit
    //   23: aload_0
    //   24: areturn
    //   25: getstatic 96	ger:c	Lger;
    //   28: ifnonnull +17 -> 45
    //   31: new 2	ger
    //   34: dup
    //   35: aload_0
    //   36: invokevirtual 100	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   39: invokespecial 102	ger:<init>	(Landroid/content/Context;)V
    //   42: putstatic 96	ger:c	Lger;
    //   45: getstatic 96	ger:c	Lger;
    //   48: astore_0
    //   49: goto -29 -> 20
    //   52: astore_0
    //   53: ldc 2
    //   55: monitorexit
    //   56: aload_0
    //   57: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	58	0	paramContext	Context
    //   11	5	1	j	int
    // Exception table:
    //   from	to	target	type
    //   3	12	52	finally
    //   25	45	52	finally
    //   45	49	52	finally
  }
  
  public void a(String paramString1, String paramString2)
  {
    synchronized (g)
    {
      if (h == null)
      {
        h = new ArrayList();
        i = new ArrayList();
        e.postDelayed(f, b);
      }
      h.add(paramString1);
      i.add(paramString2);
      if (h.size() >= 10000)
      {
        f.run();
        e.removeCallbacks(f);
        return;
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     ger
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */