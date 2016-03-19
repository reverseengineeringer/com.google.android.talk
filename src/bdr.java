import android.content.Context;
import java.util.concurrent.Executors;

public final class bdr
{
  public static final String a = bdp.class.getName();
  private static bdq b;
  
  public static void a(Context paramContext, ilh paramilh)
  {
    if (b == null) {
      b = new bdq();
    }
    paramilh.a(bdp.class, new bds("babel_", paramContext, Executors.newSingleThreadExecutor()));
  }
}

/* Location:
 * Qualified Name:     bdr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */