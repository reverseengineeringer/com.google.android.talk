import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;

public final class dip
{
  public static final String a = Application.ActivityLifecycleCallbacks.class.getName();
  public static final String b = igo.class.getName();
  public static final String c = htf.class.getName();
  private static din d;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (d == null) {
      d = new din();
    }
    dux localdux = new dux(paramContext);
    if (eci.a == null) {
      eci.a = new eci();
    }
    eci localeci = eci.a;
    if (dys.a == null) {
      dys.a = new dys();
    }
    dys localdys = dys.a;
    if (dvs.a == null) {
      dvs.a = new dvs(paramContext);
    }
    paramilh.a(Application.ActivityLifecycleCallbacks.class, new Application.ActivityLifecycleCallbacks[] { localdux, localeci, localdys, dvs.a, new ehs(paramContext) });
  }
  
  public static void a(ilh paramilh)
  {
    if (d == null) {
      d = new din();
    }
    paramilh.a(igo.class, new dlr());
  }
  
  public static void b(ilh paramilh)
  {
    if (d == null) {
      d = new din();
    }
    paramilh.a(htf.class, d.a());
  }
}

/* Location:
 * Qualified Name:     dip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */