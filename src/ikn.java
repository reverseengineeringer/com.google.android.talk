import android.content.Context;

public final class ikn
{
  public static final String a = ikj.class.getName();
  public static final String b = ikk.class.getName();
  private static ikm c;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (c == null) {
      c = new ikm();
    }
    paramilh.a(ikj.class, new ikj(paramContext));
  }
  
  public static void a(ilh paramilh)
  {
    if (c == null) {
      c = new ikm();
    }
    paramilh.a(ikk.class, new ikk());
  }
}

/* Location:
 * Qualified Name:     ikn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */