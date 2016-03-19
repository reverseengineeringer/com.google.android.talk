import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.telecom.Connection;
import android.telecom.ConnectionRequest;
import android.telecom.PhoneAccountHandle;
import android.telecom.RemoteConnection;
import android.telecom.TelecomManager;
import android.text.TextUtils;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Collection;

final class ery
  implements erx
{
  final Context a;
  eru b;
  private final TelecomManager c;
  private final Runnable d = new erz(this);
  
  ery(Context paramContext, TelecomManager paramTelecomManager)
  {
    a = paramContext;
    c = paramTelecomManager;
  }
  
  private boolean a(int paramInt)
  {
    return b.a().f().b().c() == paramInt;
  }
  
  void a()
  {
    ezi.c("Babel_telephony", "TeleHandoffWifiToCellular.startHandoff", new Object[0]);
    erg localerg = b.a();
    if (localerg.g()) {}
    for (Object localObject = c.getDefaultOutgoingPhoneAccount("tel");; localObject = localerg.e().getAccountHandle())
    {
      String str = String.valueOf(localObject);
      ezi.c("Babel_telephony", String.valueOf(str).length() + 59 + "TeleHandoffWifiToCellular.startHandoff, got phone account: " + str, new Object[0]);
      if (localObject != null) {
        break;
      }
      ezi.c("Babel_telephony", "TeleHandoffWifiToCellular.startHandoff, no phone account.", new Object[0]);
      b.a(false, 225);
      return;
    }
    if (!b.f())
    {
      ezi.c("Babel_telephony", "TeleHandoffWifiToCellular.startHandoff, disallowed by config.", new Object[0]);
      b.a(false, 224);
      return;
    }
    if (TextUtils.isEmpty(localerg.m()))
    {
      ezi.c("Babel_telephony", "TeleHandoffWifiToCellular.startHandoff, no handoff number", new Object[0]);
      b.a(false, 320);
      return;
    }
    int i = b.b();
    if ((i != 3) && (i != 4))
    {
      localObject = String.valueOf(Connection.stateToString(i));
      if (((String)localObject).length() != 0) {}
      for (localObject = "TeleHandoffWifiToCellular.startHandoff, not possible for call state: ".concat((String)localObject);; localObject = new String("TeleHandoffWifiToCellular.startHandoff, not possible for call state: "))
      {
        ezi.c("Babel_telephony", (String)localObject, new Object[0]);
        b.a(false, 227);
        return;
      }
    }
    i = localerg.d().getAllConnections().size();
    if (i > 1)
    {
      ezi.c("Babel_telephony", 77 + "TeleHandoffWifiToCellular.startHandoff, call count: " + i + ", fail handoff", new Object[0]);
      b.a(false, 221);
      return;
    }
    era.a(a, new esa(this, (PhoneAccountHandle)localObject));
  }
  
  void a(PhoneAccountHandle paramPhoneAccountHandle)
  {
    ezi.c("Babel_telephony", "TeleHandoffWifiToCellular.callHandoffNumber", new Object[0]);
    erg localerg = b.a();
    paramPhoneAccountHandle = new ConnectionRequest(paramPhoneAccountHandle, aal.r(localerg.m()), Bundle.EMPTY);
    if (a(1))
    {
      int i = aal.a(a, "babel_handoff_sprint_timeout_millis", 4000);
      aal.y().postDelayed(d, i);
    }
    Object localObject = localerg.d();
    localObject = ((TeleConnectionService)localObject).createRemoteOutgoingConnection(aal.m((Context)localObject), paramPhoneAccountHandle);
    if (localObject == null)
    {
      b.a(false, 321);
      return;
    }
    paramPhoneAccountHandle = null;
    if ((localerg.j() instanceof eua)) {
      paramPhoneAccountHandle = ((eua)localerg.j()).p();
    }
    if (TextUtils.isEmpty(paramPhoneAccountHandle)) {
      paramPhoneAccountHandle = localerg.j().e();
    }
    for (;;)
    {
      b.a(new etc(a, (RemoteConnection)localObject, paramPhoneAccountHandle, localerg.r(), localerg.i(), localerg.g()));
      return;
    }
  }
  
  void a(eru parameru)
  {
    b = parameru;
  }
  
  public void b()
  {
    if (b.b() == 6) {
      b.a(true, 0);
    }
    do
    {
      return;
      if ((b.c() == 4) && (a(2)))
      {
        ezi.c("Babel_telephony", "TeleHandoffWifiToCellular.checkHandoffComplete, handoff is complete - carrier is T-Mobile and new call is active.", new Object[0]);
        aal.c(2981);
        b.a(true, 0);
        return;
      }
      if (b.c() == 6)
      {
        b.a(false, 0);
        return;
      }
    } while (!b.d());
    b.a(false, 304);
  }
  
  public void c()
  {
    aal.y().removeCallbacks(d);
  }
}

/* Location:
 * Qualified Name:     ery
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */