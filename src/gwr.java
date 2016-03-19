import android.content.Context;

public final class gwr
{
  public static final String a = gwi.class.getName();
  public static final String b = gwk.class.getName();
  private static gwq c;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (c == null) {
      c = new gwq();
    }
    paramilh.a(gwk.class, new gwp(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (c == null) {
      c = new gwq();
    }
    paramilh.a(gwi.class, new gwn((byte)0));
  }
}

/* Location:
 * Qualified Name:     gwr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */