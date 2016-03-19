import android.app.Activity;
import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.BackgroundGcmTickleService;
import java.util.Iterator;
import java.util.List;

public final class dvs
  extends axv
{
  public static dvs a = null;
  private static final boolean b;
  private final Context c;
  
  static
  {
    imx localimx = ezi.o;
    b = false;
  }
  
  public dvs(Context paramContext)
  {
    c = paramContext;
  }
  
  protected void a(Activity paramActivity)
  {
    if (BackgroundGcmTickleService.a(c)) {
      BackgroundGcmTickleService.a(c, false);
    }
  }
  
  protected void b()
  {
    Iterator localIterator = ((hpz)ilh.a(c, hpz.class)).a().iterator();
    while (localIterator.hasNext())
    {
      int i = aal.a((Integer)localIterator.next(), 0);
      if ((dvp.g.b(i)) && (!BackgroundGcmTickleService.a(c))) {
        BackgroundGcmTickleService.a(c, true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dvs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */