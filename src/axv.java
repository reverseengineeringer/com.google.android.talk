import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;

public class axv
  implements Application.ActivityLifecycleCallbacks
{
  private Set<Activity> a = new HashSet();
  private Set<Activity> b = new HashSet();
  private Set<Activity> c = new HashSet();
  
  public void a(Activity paramActivity) {}
  
  public void b() {}
  
  public void b(Activity paramActivity) {}
  
  public void c() {}
  
  public void j_() {}
  
  public final void onActivityCreated(Activity paramActivity, Bundle paramBundle)
  {
    if (!a.contains(paramActivity)) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "activity being created that was already created: %s", new Object[] { paramActivity });
      a.add(paramActivity);
      if (a.size() == 1) {
        j_();
      }
      return;
    }
  }
  
  public final void onActivityDestroyed(Activity paramActivity)
  {
    if (!c.contains(paramActivity))
    {
      bool = true;
      fii.b(bool, "activity being destroyed that wasn't paused: %s", new Object[] { paramActivity });
      if (b.contains(paramActivity)) {
        break label114;
      }
    }
    label114:
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "activity being destroyed that wasn't stopped: %s", new Object[] { paramActivity });
      fii.b(a.contains(paramActivity), "activity being destroyed that wasn't created: %s", new Object[] { paramActivity });
      a.remove(paramActivity);
      if (a.isEmpty()) {
        c();
      }
      return;
      bool = false;
      break;
    }
  }
  
  public final void onActivityPaused(Activity paramActivity)
  {
    fii.b(c.contains(paramActivity), "activity being paused that wasn't started: %s", new Object[] { paramActivity });
    fii.b(b.contains(paramActivity), "activity being paused that wasn't started: %s", new Object[] { paramActivity });
    fii.b(a.contains(paramActivity), "activity being paused that wasn't created: %s", new Object[] { paramActivity });
    c.remove(paramActivity);
  }
  
  public final void onActivityResumed(Activity paramActivity)
  {
    fii.b(b.contains(paramActivity), "activity being resumed that wasn't started: %s", new Object[] { paramActivity });
    fii.b(a.contains(paramActivity), "activity being resumed that wasn't created: %s", new Object[] { paramActivity });
    if (!c.contains(paramActivity)) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "activity being resumed that was already running: %s", new Object[] { paramActivity });
      c.add(paramActivity);
      return;
    }
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public final void onActivityStarted(Activity paramActivity)
  {
    if (!b.contains(paramActivity)) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "activity being started that was already started: %s", new Object[] { paramActivity });
      fii.b(a.contains(paramActivity), "activity being started that wasn't created: %s", new Object[] { paramActivity });
      b.add(paramActivity);
      if (b.size() == 1) {
        a(paramActivity);
      }
      b(paramActivity);
      return;
    }
  }
  
  public final void onActivityStopped(Activity paramActivity)
  {
    if (!c.contains(paramActivity)) {}
    for (boolean bool = true;; bool = false)
    {
      fii.b(bool, "activity being stopped that wasn't paused: %s", new Object[] { paramActivity });
      fii.b(b.contains(paramActivity), "activity being stopped that wasn't started: %s", new Object[] { paramActivity });
      fii.b(a.contains(paramActivity), "activity being stopped that wasn't created: %s", new Object[] { paramActivity });
      b.remove(paramActivity);
      if (b.isEmpty()) {
        b();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     axv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */