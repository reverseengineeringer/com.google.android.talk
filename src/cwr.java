import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;

public final class cwr
{
  public static final String a = Application.ActivityLifecycleCallbacks.class.getName();
  public static final String b = cwp.class.getName();
  public static final String c = cwo.class.getName();
  private static cwq d;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (d == null) {
      d = new cwq();
    }
    paramilh.a(Application.ActivityLifecycleCallbacks.class, new Application.ActivityLifecycleCallbacks[] { (Application.ActivityLifecycleCallbacks)ilh.a(paramContext, cwp.class) });
  }
  
  public static void b(Context paramContext, ilh paramilh)
  {
    if (d == null) {
      d = new cwq();
    }
    paramilh.a(cwp.class, new cwp(paramContext));
  }
  
  public static void c(Context paramContext, ilh paramilh)
  {
    if (d == null) {
      d = new cwq();
    }
    paramilh.a(cwo.class, (cwo)ilh.a(paramContext, cwp.class));
  }
}

/* Location:
 * Qualified Name:     cwr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */