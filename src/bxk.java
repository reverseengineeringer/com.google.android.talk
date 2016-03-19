import android.content.Context;

public final class bxk
{
  public static final String a = bwr.class.getName();
  public static final String b = bwl.class.getName();
  private static bxj c;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (c == null) {
      c = new bxj();
    }
    paramilh.a(bwr.class, c.a(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (c == null) {
      c = new bxj();
    }
    paramilh.a(bwl.class, c.a());
  }
}

/* Location:
 * Qualified Name:     bxk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */