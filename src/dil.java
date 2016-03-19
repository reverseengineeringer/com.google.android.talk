import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;

final class dil
  implements Runnable
{
  dil(Context paramContext) {}
  
  public void run()
  {
    ehb.a();
    Object localObject1 = a;
    Object localObject2 = dvd.d;
    boolean bool = dvi.a();
    localObject2 = ((Context)localObject1).getPackageManager();
    localObject1 = new ComponentName((Context)localObject1, "com.google.android.apps.hangouts.phone.ShareIntentSmsOnlyActivity");
    if (bool) {}
    for (int i = 1;; i = 2)
    {
      ((PackageManager)localObject2).setComponentEnabledSetting((ComponentName)localObject1, i, 1);
      ilh.b(a, ctl.class);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     dil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */