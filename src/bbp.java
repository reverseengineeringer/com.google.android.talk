import android.content.Context;

public final class bbp
{
  public static final String a = bbu.class.getName();
  public static final String b = iaw.class.getName();
  public static final String c = dxj.class.getName();
  public static final String d = bbq.class.getName();
  public static final String e = hqf.class.getName();
  private static bbo f;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (f == null) {
      f = new bbo();
    }
    paramilh.a(bbu.class, new bbu(paramContext, paramilh));
  }
  
  public static void a(ilh paramilh)
  {
    if (f == null) {
      f = new bbo();
    }
    paramilh.a(iaw.class, new iaw[] { (iaw)paramilh.b(bbu.class) });
  }
  
  public static void b(Context paramContext, ilh paramilh)
  {
    if (f == null) {
      f = new bbo();
    }
    paramilh.a(dxj.class, new dxj[] { (dxj)ilh.b(paramContext, bbq.class) });
  }
  
  public static void c(Context paramContext, ilh paramilh)
  {
    if (f == null) {
      f = new bbo();
    }
    paramilh.a(bbq.class, new bbq(paramContext));
  }
  
  public static void d(Context paramContext, ilh paramilh)
  {
    if (f == null) {
      f = new bbo();
    }
    paramilh.a(hqf.class, new hqf[] { (hqf)ilh.b(paramContext, bbq.class) });
  }
}

/* Location:
 * Qualified Name:     bbp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */