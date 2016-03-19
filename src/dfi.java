import android.content.Context;
import android.content.Intent;
import com.google.android.apps.hangouts.phone.DebugActivity;

public final class dfi
  implements Runnable
{
  public dfi(Context paramContext) {}
  
  public void run()
  {
    
    try
    {
      Object localObject = dvd.a(a);
      if (localObject == null) {
        return;
      }
      if (bff.a(a, ((bfd)localObject).g(), "DEBUG_RTCS", 0L) > 0L)
      {
        localObject = DebugActivity.a(a);
        a.startService((Intent)localObject);
        return;
      }
    }
    catch (hqd localhqd)
    {
      ezi.b("BabelDebugActivity", "account not found starting debug activity", localhqd);
    }
  }
}

/* Location:
 * Qualified Name:     dfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */