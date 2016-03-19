import android.content.Context;

public final class cpr
{
  public static final String a = dxj.class.getName();
  public static final String b = bwl.class.getName();
  public static final String c = cpl.class.getName();
  public static final String d = cps.class.getName();
  private static cpq e;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (e == null) {
      e = new cpq();
    }
    paramilh.a(dxj.class, e.a(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (e == null) {
      e = new cpq();
    }
    paramilh.a(bwl.class, e.a());
  }
  
  public static void b(Context paramContext, ilh paramilh)
  {
    if (e == null) {
      e = new cpq();
    }
    paramilh.a(cpl.class, (cpl)ilh.a(paramContext, cps.class));
  }
  
  public static void c(Context paramContext, ilh paramilh)
  {
    if (e == null) {
      e = new cpq();
    }
    paramilh.a(cps.class, new cps(paramContext));
  }
}

/* Location:
 * Qualified Name:     cpr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */