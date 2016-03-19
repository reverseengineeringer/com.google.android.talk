import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.apps.hangouts.service.NetworkConnectivityChangeReceiver;

public final class ehs
  extends axv
{
  private static final boolean b = false;
  private final Context a;
  
  static
  {
    imx localimx = ezi.o;
  }
  
  public ehs(Context paramContext)
  {
    a = paramContext;
  }
  
  protected void a(Activity paramActivity)
  {
    a.getPackageManager().setComponentEnabledSetting(new ComponentName(a, NetworkConnectivityChangeReceiver.class), 1, 1);
  }
  
  protected void b()
  {
    a.getPackageManager().setComponentEnabledSetting(new ComponentName(a, NetworkConnectivityChangeReceiver.class), 2, 1);
  }
}

/* Location:
 * Qualified Name:     ehs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */