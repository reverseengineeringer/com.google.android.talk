import android.content.Context;

public final class dvk
{
  public static final String a = hpx.class.getName();
  public static final String b = iaw.class.getName();
  public static final String c = dvd.class.getName();
  private static dvj d;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (d == null) {
      d = new dvj();
    }
    paramilh.a(dvd.class, new dvd(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (d == null) {
      d = new dvj();
    }
    paramilh.a(hpx.class, new hpx[] { (hpx)paramilh.a(dvd.class) });
  }
  
  public static void b(ilh paramilh)
  {
    if (d == null) {
      d = new dvj();
    }
    paramilh.a(iaw.class, new iaw[] { (iaw)paramilh.a(dvd.class) });
  }
}

/* Location:
 * Qualified Name:     dvk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */