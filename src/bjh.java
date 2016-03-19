import android.app.Activity;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import java.util.Map;
import java.util.Set;

public final class bjh
  implements inv, ioz
{
  private final Activity b;
  private final int c;
  private final String d;
  
  public bjh(bjf parambjf, Activity paramActivity, int paramInt, String paramString)
  {
    b = paramActivity;
    c = paramInt;
    d = paramString;
  }
  
  public void a()
  {
    if (!b.isFinishing()) {}
    Set localSet;
    do
    {
      return;
      localSet = (Set)a.a.get(Integer.valueOf(c));
    } while ((localSet == null) || (!localSet.contains(d)));
    RealTimeChatService.a(dvd.e(c), d, -1L);
    localSet.remove(d);
  }
}

/* Location:
 * Qualified Name:     bjh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */