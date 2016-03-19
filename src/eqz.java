import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.Locale;

final class eqz
  extends BroadcastReceiver
{
  eqz(equ paramequ) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i = 1;
    if (equ.a)
    {
      paramContext = String.valueOf(paramIntent.getAction());
      if (paramContext.length() != 0) {
        "TeleCellMonitor.Receiver.onReceive, action: ".concat(paramContext);
      }
    }
    else
    {
      paramContext = a;
      hbs.a();
      boolean bool = aal.k(b);
      if (bool == e) {
        break label143;
      }
      ezi.c("Babel_telephony", String.format(Locale.US, "TeleCellMonitor.updateState, (%b) -> (%b)", new Object[] { Boolean.valueOf(e), Boolean.valueOf(bool) }), new Object[0]);
      e = bool;
    }
    for (;;)
    {
      if ((i != 0) && (c != null)) {
        c.a(d, e);
      }
      return;
      new String("TeleCellMonitor.Receiver.onReceive, action: ");
      break;
      label143:
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     eqz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */