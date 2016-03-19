import android.content.Context;

public final class gxv
{
  public static final String a = gxl.class.getName();
  public static final String b = gxm.class.getName();
  public static final String c = gxr.class.getName();
  private static gxu d;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (d == null) {
      d = new gxu();
    }
    paramilh.a(gxl.class, new gxs(paramContext, (byte)0));
  }
  
  public static void a(ilh paramilh)
  {
    if (d == null) {
      d = new gxu();
    }
    paramilh.a(gxm.class, new gxt());
  }
  
  public static void b(ilh paramilh)
  {
    if (d == null) {
      d = new gxu();
    }
    paramilh.a(gxr.class, new gyc());
  }
}

/* Location:
 * Qualified Name:     gxv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */