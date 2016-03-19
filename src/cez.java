import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.PowerManager;

final class cez
  extends BroadcastReceiver
{
  cez(cex paramcex) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (a.b == null) {}
    do
    {
      return;
      if ("android.intent.action.BATTERY_LOW".equals(paramIntent.getAction()))
      {
        a.b.a(cey.a);
        return;
      }
      if ("android.intent.action.BATTERY_OKAY".equals(paramIntent.getAction()))
      {
        a.b.a(cey.b);
        return;
      }
    } while ((Build.VERSION.SDK_INT < 21) || (!"android.os.action.POWER_SAVE_MODE_CHANGED".equals(paramIntent.getAction())));
    if (((PowerManager)paramContext.getSystemService("power")).isPowerSaveMode())
    {
      a.b.a(cey.c);
      return;
    }
    a.b.a(cey.d);
  }
}

/* Location:
 * Qualified Name:     cez
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */