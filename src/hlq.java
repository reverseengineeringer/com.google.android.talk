import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import java.util.Iterator;
import java.util.List;

public final class hlq
  implements Application.ActivityLifecycleCallbacks
{
  private final hlr a;
  private final hls b;
  private final Application c;
  private volatile boolean d = false;
  private volatile boolean e = false;
  private int f = 0;
  
  public hlq(Application paramApplication, hlr paramhlr, hls paramhls)
  {
    a = paramhlr;
    b = paramhls;
    c = paramApplication;
    if ((paramApplication != null) && (paramApplication.getResources() != null)) {
      f = getResourcesgetConfigurationorientation;
    }
  }
  
  private void a(Activity paramActivity)
  {
    paramActivity = paramActivity.getApplicationContext();
    Object localObject = ((ActivityManager)paramActivity.getSystemService("activity")).getRunningAppProcesses();
    int i;
    if (localObject != null)
    {
      localObject = ((List)localObject).iterator();
      for (;;)
      {
        if (((Iterator)localObject).hasNext())
        {
          ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)((Iterator)localObject).next();
          if ((processName.contains(paramActivity.getPackageName())) && (importance == 100))
          {
            i = 1;
            if (i != 0) {
              break label105;
            }
            if (d)
            {
              d = false;
              a.a();
            }
          }
        }
      }
    }
    label105:
    while (d)
    {
      return;
      i = 0;
      break;
    }
    d = true;
    b.a();
  }
  
  private boolean b()
  {
    boolean bool = false;
    int i = c.getResources().getConfiguration().orientation;
    if (f != i)
    {
      bool = true;
      f = i;
    }
    return bool;
  }
  
  public void a()
  {
    c.registerActivityLifecycleCallbacks(this);
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity) {}
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    if (!e)
    {
      a(paramActivity);
      return;
    }
    e = b();
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    e = b();
    if (!e) {
      a(paramActivity);
    }
  }
}

/* Location:
 * Qualified Name:     hlq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */