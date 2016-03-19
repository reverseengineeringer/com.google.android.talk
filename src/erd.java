import android.content.Context;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;

final class erd
  extends PhoneStateListener
{
  private final Context a;
  private erb b;
  private ServiceState c;
  private SignalStrength d;
  
  erd(Context paramContext, erb paramerb)
  {
    a = paramContext;
    b = paramerb;
  }
  
  private void a()
  {
    if ((c != null) && (d != null) && (b != null))
    {
      b.a(era.a(a, c.getState(), era.a(d)));
      b = null;
    }
  }
  
  public void onServiceStateChanged(ServiceState paramServiceState)
  {
    String str = String.valueOf(paramServiceState);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 41 + "CellStateListener.onServiceStateChanged: " + str, new Object[0]);
    c = paramServiceState;
    a();
  }
  
  public void onSignalStrengthsChanged(SignalStrength paramSignalStrength)
  {
    String str = String.valueOf(paramSignalStrength);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 44 + "CellStateListener.onSignalStrengthsChanged: " + str, new Object[0]);
    d = paramSignalStrength;
    a();
  }
}

/* Location:
 * Qualified Name:     erd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */