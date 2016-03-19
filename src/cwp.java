import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.service.NetworkConnectionCheckingService;

class cwp
  implements Application.ActivityLifecycleCallbacks, cwo
{
  private final Context a;
  private volatile cwn b = cwn.a;
  
  public cwp(Context paramContext)
  {
    a = paramContext;
  }
  
  public cwn a()
  {
    if (cwn.a == b) {
      a(a, true);
    }
    return b;
  }
  
  public void a(Context paramContext, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, NetworkConnectionCheckingService.class);
    if (paramBoolean) {
      localIntent.putExtra("update_type", "initialize_connection_state");
    }
    for (;;)
    {
      paramContext.startService(localIntent);
      return;
      localIntent.putExtra("update_type", "update_connection_state");
    }
  }
  
  public void a(cwn paramcwn)
  {
    if (paramcwn != b)
    {
      String str1 = String.valueOf(b);
      String str2 = String.valueOf(paramcwn);
      ezi.c("Babel", String.valueOf(str1).length() + 34 + String.valueOf(str2).length() + "connection state changed from " + str1 + " to " + str2, new Object[0]);
      b = paramcwn;
      if (((bdp)ilh.a(a, bdp.class)).a("babel_network_change_notification", false)) {
        RealTimeChatService.i.post(new dze());
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    if (b.a() == paramBoolean) {
      return;
    }
    Intent localIntent = new Intent(a, NetworkConnectionCheckingService.class);
    localIntent.putExtra("update_type", "verify_connection_state");
    localIntent.putExtra("expected_connectivity", paramBoolean);
    a.startService(localIntent);
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity) {}
  
  public void onActivityResumed(Activity paramActivity)
  {
    paramActivity = paramActivity.getApplicationContext();
    if (a() == cwn.c) {
      a(paramActivity, false);
    }
  }
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity) {}
  
  public void onActivityStopped(Activity paramActivity) {}
}

/* Location:
 * Qualified Name:     cwp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */