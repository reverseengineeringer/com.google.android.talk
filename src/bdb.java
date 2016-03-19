import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;

public final class bdb
{
  public static final String a = Application.ActivityLifecycleCallbacks.class.getName();
  public static final String b = bcm.class.getName();
  private static bda c;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (c == null) {
      c = new bda();
    }
    paramilh.a(Application.ActivityLifecycleCallbacks.class, new Application.ActivityLifecycleCallbacks[] { (bcx)ilh.a(paramContext, bcm.class) });
  }
  
  public static void b(Context paramContext, ilh paramilh)
  {
    if (c == null) {
      c = new bda();
    }
    paramilh.a(bcm.class, new bcx(paramContext));
  }
}

/* Location:
 * Qualified Name:     bdb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */