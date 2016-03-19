import android.content.Context;

public final class beg
{
  public static final String a = beh.class.getName();
  public static final String b = iaw.class.getName();
  public static final String c = bff.class.getName();
  public static final String d = hqf.class.getName();
  private static bef e;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (e == null) {
      e = new bef();
    }
    paramilh.a(bff.class, new bff(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (e == null) {
      e = new bef();
    }
    paramilh.a(beh.class, new beh[] { new bie() });
  }
  
  public static void b(Context paramContext, ilh paramilh)
  {
    if (e == null) {
      e = new bef();
    }
    paramilh.a(hqf.class, new hqf[] { (hqf)ilh.a(paramContext, bff.class) });
  }
  
  public static void b(ilh paramilh)
  {
    if (e == null) {
      e = new bef();
    }
    paramilh.a(iaw.class, new iaw[] { (iaw)paramilh.a(bff.class) });
  }
}

/* Location:
 * Qualified Name:     beg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */