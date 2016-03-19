import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class erj
  extends BroadcastReceiver
{
  private final erg a;
  
  erj(erg paramerg)
  {
    a = paramerg;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(paramContext).length() + 34 + "HandoffBroadcastReceiver.onReceive" + paramContext, new Object[0]);
    if ((a.b != null) && (a.b.a() == a))
    {
      paramContext = a;
      paramIntent = String.valueOf(b);
      ezi.c("Babel_telephony", String.valueOf(paramIntent).length() + 43 + "TeleConnection.performManualHandoff, call: " + paramIntent, new Object[0]);
      if (eru.a(paramContext.d())) {
        break label145;
      }
      ezi.c("Babel_telephony", "TeleConnection.performManualHandoff, manual handoff not allowed", new Object[0]);
    }
    label145:
    while (b == null) {
      return;
    }
    b.c();
  }
}

/* Location:
 * Qualified Name:     erj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */