import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import java.util.Locale;

final class eqw
  extends PhoneStateListener
{
  private ServiceState b;
  private SignalStrength c;
  
  eqw(equ paramequ) {}
  
  private void a()
  {
    int j = 1;
    equ localequ;
    erc localerc;
    if ((b != null) && (c != null))
    {
      localequ = a;
      localerc = era.a(a.b, b.getState(), era.a(c));
      hbs.a();
      boolean bool = aal.k(b);
      if (bool == e) {
        break label208;
      }
      ezi.c("Babel_telephony", String.format(Locale.US, "TeleCellMonitor.updateState, (%b) -> (%b)", new Object[] { Boolean.valueOf(e), Boolean.valueOf(bool) }), new Object[0]);
      e = bool;
    }
    label208:
    for (int i = 1;; i = 0)
    {
      if (!localerc.equals(d))
      {
        ezi.c("Babel_telephony", String.format(Locale.US, "TeleCellMonitor.updateState, (%s) -> (%s)", new Object[] { d, localerc }), new Object[0]);
        d = localerc;
        i = j;
      }
      for (;;)
      {
        if ((i != 0) && (c != null)) {
          c.a(d, e);
        }
        return;
      }
    }
  }
  
  public void onServiceStateChanged(ServiceState paramServiceState)
  {
    if (equ.a)
    {
      String str = String.valueOf(paramServiceState);
      new StringBuilder(String.valueOf(str).length() + 57).append("TeleCellMonitor.CellStateListener.onServiceStateChanged: ").append(str);
    }
    b = paramServiceState;
    a();
  }
  
  public void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    if (equ.a)
    {
      String str = String.valueOf(paramSignalStrength);
      new StringBuilder(String.valueOf(str).length() + 60).append("TeleCellMonitor.CellStateListener.onSignalStrengthsChanged: ").append(str);
    }
    c = paramSignalStrength;
    a();
  }
}

/* Location:
 * Qualified Name:     eqw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */