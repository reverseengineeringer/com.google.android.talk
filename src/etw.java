import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

final class etw
  extends BroadcastReceiver
{
  etw(etv parametv) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    
    if (a.a != null)
    {
      int i = paramIntent.getExtras().getInt("com.google.android.apps.hangouts.user_activity_type");
      int j = paramIntent.getExtras().getInt("com.google.android.apps.hangouts.user_activity_confidence");
      ezi.c("Babel_telephony", "TeleUserActivityMonitor.onReceive, activityType: %s confidenceLevel: %s", new Object[] { etv.b(i), Integer.valueOf(j) });
      a.a.b(i, j);
    }
  }
}

/* Location:
 * Qualified Name:     etw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */