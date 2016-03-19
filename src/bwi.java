import android.content.Context;

public final class bwi
{
  public static final String a = bwe.class.getName();
  public static final String b = bwl.class.getName();
  private static bwh c;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (c == null) {
      c = new bwh();
    }
    paramilh.a(bwe.class, c.a(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (c == null) {
      c = new bwh();
    }
    paramilh.a(bwl.class, c.a());
  }
}

/* Location:
 * Qualified Name:     bwi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */