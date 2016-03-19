import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Locale;

final class eul
  extends BroadcastReceiver
{
  eul(euh parameuh) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (euh.a)
    {
      paramContext = String.valueOf(paramIntent.getAction());
      if (paramContext.length() == 0) {
        break label113;
      }
      "TeleWifiMonitor.Receiver.onReceive, action: ".concat(paramContext);
    }
    for (;;)
    {
      paramContext = a;
      hbs.a();
      paramIntent = euh.a(b);
      if (!paramIntent.equals(d))
      {
        ezi.c("Babel_telephony", String.format(Locale.US, "TeleWifiMonitor.updateSignalState, (%s) -> (%s)", new Object[] { d, paramIntent }), new Object[0]);
        d = paramIntent;
        if (c != null) {
          c.a(d);
        }
      }
      return;
      label113:
      new String("TeleWifiMonitor.Receiver.onReceive, action: ");
    }
  }
}

/* Location:
 * Qualified Name:     eul
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */