import android.content.Context;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.telecom.ConnectionRequest;
import android.telecom.TelecomManager;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class esc
  implements chj, esf, esj
{
  private final TelecomManager a;
  private final List<esd> b = new CopyOnWriteArrayList();
  private final List<eue> c = new CopyOnWriteArrayList();
  
  esc(TelecomManager paramTelecomManager)
  {
    a = paramTelecomManager;
  }
  
  static int b(Context paramContext, bfd parambfd)
  {
    bdp localbdp = aal.a(paramContext);
    if (!localbdp.a("babel_incoming_wifi_calls_allowed", true))
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallController.getRegistrationState, not allowed by gservices", new Object[0]);
      return 1;
    }
    eut localeut = eut.a(paramContext);
    if (!localeut.c())
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallController.getRegistrationState, wifi calling not enabled", new Object[0]);
      return 1;
    }
    if (parambfd.g() == localeut.f()) {
      return 3;
    }
    if (!aal.n(paramContext))
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallController.getRegistrationState, not connection manager", new Object[0]);
      return 1;
    }
    int i = localeut.b();
    if (parambfd.g() != i)
    {
      ezi.c("Babel_telephony", String.format("TeleIncomingWifiCallController.getRegistrationState, account: %s, index: %d, doesn't match calling account index: %d", new Object[] { aal.b(parambfd), Integer.valueOf(parambfd.g()), Integer.valueOf(i) }), new Object[0]);
      return 1;
    }
    if (parambfd.N() == 0)
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallController.getRegistrationState, voip calling status is unknown", new Object[0]);
      return 2;
    }
    if ((localbdp.a("babel_incoming_wifi_calls_require_google_voice_integration", true)) && (ezm.c()) && (!parambfd.b(ezm.f())))
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallController.getRegistrationState, cell phone number doesn't match Google Voice number", new Object[0]);
      return 1;
    }
    return 3;
  }
  
  public erg a(TeleConnectionService paramTeleConnectionService, ConnectionRequest paramConnectionRequest, erl paramerl, PowerManager.WakeLock paramWakeLock)
  {
    paramTeleConnectionService = new eue(paramTeleConnectionService, this, paramTeleConnectionService, paramConnectionRequest, paramerl, paramWakeLock);
    c.add(paramTeleConnectionService);
    return paramTeleConnectionService.c();
  }
  
  public void a(esd paramesd)
  {
    aal.w();
    b.remove(paramesd);
  }
  
  public void a(eue parameue)
  {
    c.remove(parameue);
  }
  
  public boolean a(Context paramContext, int paramInt1, cgs paramcgs, int paramInt2)
  {
    boolean bool = false;
    aal.w();
    Object localObject;
    switch (paramInt2)
    {
    default: 
      localObject = 18 + "OTHER: " + paramInt2;
      ezi.c("Babel_telephony", String.format("TeleIncomingWifiCallController.onCancelInvite, hangoutRequest: %s, dismissReason: %s", new Object[] { paramcgs, localObject }), new Object[0]);
      localObject = b.iterator();
      label106:
      if (((Iterator)localObject).hasNext())
      {
        if (!((esd)((Iterator)localObject).next()).a(paramcgs)) {
          break label232;
        }
        bool = true;
      }
      break;
    }
    label232:
    for (;;)
    {
      break label106;
      localObject = "UNKNOWN";
      break;
      localObject = "USER_RESPONDED";
      break;
      localObject = "USER_KICKED";
      break;
      localObject = "INVITER_CANCELLED";
      break;
      localObject = "INVITE_TIMEOUT";
      break;
      if (aal.a(paramContext, paramInt1, paramcgs)) {
        bool = true;
      }
      paramContext = c.iterator();
      while (paramContext.hasNext()) {
        if (((eue)paramContext.next()).a(paramcgs, paramInt2)) {
          bool = true;
        }
      }
      return bool;
    }
  }
  
  public boolean a(Context paramContext, bfd parambfd)
  {
    return b(paramContext, parambfd) == 3;
  }
  
  public boolean a(Context paramContext, eaw parameaw, bfd parambfd, cgs paramcgs, String paramString, long paramLong)
  {
    aal.w();
    Object localObject1 = String.valueOf(paramcgs);
    Object localObject2 = String.valueOf(aal.s(paramString));
    ezi.c("Babel_telephony", String.valueOf(localObject1).length() + 92 + String.valueOf(localObject2).length() + "TeleIncomingWifiCallController.onInviteToPhoneNumber, hangoutRequest: " + (String)localObject1 + ", inviterPhoneNumber: " + (String)localObject2, new Object[0]);
    localObject1 = ero.a(paramContext, ezm.g(paramString), true, euh.a(paramContext));
    localObject2 = new est(paramContext, etj.a(paramContext));
    parambfd = new esg(paramcgs, paramString, paramLong, SystemClock.elapsedRealtime(), (ero)localObject1, parambfd.g(), false, (est)localObject2);
    paramContext = new esd(paramContext, this, a, parambfd, false);
    if (paramContext.a())
    {
      b.add(paramContext);
      paramContext.a(parameaw);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     esc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */