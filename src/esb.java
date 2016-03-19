import android.content.Context;
import android.net.Uri;
import android.telecom.Connection;
import android.telecom.ConnectionRequest;
import android.telecom.DisconnectCause;
import android.telecom.RemoteConnection;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

public final class esb
{
  private final Context a;
  private final erl b;
  private final erg c;
  
  public esb(Context paramContext, TeleConnectionService paramTeleConnectionService, ConnectionRequest paramConnectionRequest, erl paramerl)
  {
    a = paramContext;
    b = paramerl;
    c = new erg(new esw(paramTeleConnectionService, paramConnectionRequest, new est(paramTeleConnectionService, etj.a(paramTeleConnectionService)), true));
    c.b();
  }
  
  private boolean b()
  {
    ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.hasOnGoingCallFromSameNumber", new Object[0]);
    Iterator localIterator = c.d().getAllConnections().iterator();
    label128:
    label139:
    label180:
    label185:
    label190:
    label194:
    while (localIterator.hasNext())
    {
      Object localObject1 = (Connection)localIterator.next();
      if (!(localObject1 instanceof erg))
      {
        ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.hasOnGoingCallFromSameNumber, not TeleConnection", new Object[0]);
      }
      else
      {
        localObject1 = (erg)localObject1;
        if (((erg)localObject1).y() <= erl.a(a))
        {
          Object localObject2 = c.e().getAddress();
          Object localObject3 = ((erg)localObject1).e().getAddress();
          String str;
          if (localObject2 != null)
          {
            localObject1 = ((Uri)localObject2).getScheme();
            if (localObject2 == null) {
              break label180;
            }
            localObject2 = ((Uri)localObject2).getSchemeSpecificPart();
            if (localObject3 == null) {
              break label185;
            }
            str = ((Uri)localObject3).getScheme();
            if (localObject3 == null) {
              break label190;
            }
          }
          for (localObject3 = ((Uri)localObject3).getSchemeSpecificPart();; localObject3 = null)
          {
            if (!erl.a((String)localObject1, (String)localObject2, str, (String)localObject3)) {
              break label194;
            }
            ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.hasOnGoingCallFromSameNumber, duplicate call", new Object[0]);
            return true;
            localObject1 = null;
            break;
            localObject2 = null;
            break label128;
            str = null;
            break label139;
          }
        }
      }
    }
    return false;
  }
  
  private void c()
  {
    Object localObject = c.d();
    localObject = ((TeleConnectionService)localObject).createRemoteIncomingConnection(aal.m((Context)localObject), c.e());
    if (localObject != null)
    {
      ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.rejectCanceledCellularCall, rejecting call", new Object[0]);
      ((RemoteConnection)localObject).reject();
    }
  }
  
  public erg a()
  {
    ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.startRequest", new Object[0]);
    if ((b != null) && (b.a(c.e(), false)))
    {
      ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.startRequest, call is duplicate", new Object[0]);
      c();
      c.setDisconnected(new DisconnectCause(4, null));
    }
    int j;
    for (int i = 2446;; i = 2446)
    {
      j = eut.a(a).b();
      aal.a(a, j, c.f().c(), i);
      return c;
      if (!b()) {
        break;
      }
      ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.startRequest, ongoing call from the same number", new Object[0]);
      c();
      c.setDisconnected(new DisconnectCause(4, null));
    }
    Object localObject = aal.a(a, "babel_spam_caller_id", "+14082560700");
    String str = c.f().d();
    if (c.h().a(a))
    {
      if (aal.c(str, (String)localObject)) {
        break label324;
      }
      ezi.c("Babel_telephony", String.format("TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, not blocking. Incoming caller ID: %s, didn't exactly match blocked caller ID: %s", new Object[] { aal.s(str), localObject }), new Object[0]);
      i = 0;
    }
    for (;;)
    {
      if (i == 0) {
        break label473;
      }
      ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.startRequest, call is spam to dark number", new Object[0]);
      c();
      c.setDisconnected(new DisconnectCause(4, null));
      i = 2338;
      break;
      if (!aal.d(str, (String)localObject))
      {
        ezi.c("Babel_telephony", String.format("TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, not blocking. Incoming caller ID: %s, didn't fuzzy match blocked caller ID: %s", new Object[] { aal.s(str), localObject }), new Object[0]);
        i = 0;
      }
      else
      {
        label324:
        long l = eut.a(a).g();
        if (l > 0L) {}
        for (i = (int)((System.currentTimeMillis() - l) / TimeUnit.DAYS.toMillis(1L));; i = -1)
        {
          if (i != -1) {
            break label382;
          }
          ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, blocking. Caller ID matches and user never made an emergency call", new Object[0]);
          i = 1;
          break;
        }
        label382:
        j = aal.a(a, "babel_days_to_unblock_spam", 30);
        if (i > j)
        {
          ezi.c("Babel_telephony", String.format("TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, blocking. Caller ID matches and user made an emergency call %d days ago which is greater than the threshold: %d", new Object[] { Integer.valueOf(i), Integer.valueOf(j) }), new Object[0]);
          i = 1;
        }
        else
        {
          ezi.c("Babel_telephony", String.format("TeleIncomingCellCallRequest.blockSpamCallsToDarkNumber, not blocking even though caller ID matches. Use made an emergency call %d days ago which is less than the threshold: %d", new Object[] { Integer.valueOf(i), Integer.valueOf(j) }), new Object[0]);
          i = 0;
        }
      }
    }
    label473:
    if (!aal.a(a, "babel_remote_connection_allowed", true))
    {
      ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.createRemoteConnection, remote connection disallowed by gservices", new Object[0]);
      c.setDisconnected(new DisconnectCause(10));
    }
    for (;;)
    {
      aal.a(a, c);
      i = 2338;
      break;
      localObject = c.d();
      localObject = ((TeleConnectionService)localObject).createRemoteIncomingConnection(aal.m((Context)localObject), c.e());
      if (localObject == null)
      {
        ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.createRemoteConnection, remoteConnection is null", new Object[0]);
        c.setDisconnected(new DisconnectCause(10));
      }
      else
      {
        ezi.c("Babel_telephony", "TeleIncomingCellCallRequest.createRemoteConnection", new Object[0]);
        localObject = new etc(a, (RemoteConnection)localObject, null, null, c.i(), true);
        c.a((eqs)localObject);
      }
    }
  }
}

/* Location:
 * Qualified Name:     esb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */