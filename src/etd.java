import android.net.Uri;
import android.telecom.Connection;
import android.telecom.DisconnectCause;
import android.telecom.RemoteConference;
import android.telecom.RemoteConnection;
import android.telecom.RemoteConnection.Callback;
import android.telecom.StatusHints;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class etd
  extends RemoteConnection.Callback
{
  etd(etc parametc) {}
  
  public void onAddressChanged(RemoteConnection paramRemoteConnection, Uri paramUri, int paramInt)
  {
    Object localObject1 = null;
    if (paramUri == null) {
      paramRemoteConnection = null;
    }
    Object localObject2;
    for (;;)
    {
      paramRemoteConnection = String.valueOf(paramRemoteConnection);
      localObject2 = String.valueOf(a.d);
      ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 35 + String.valueOf(localObject2).length() + "TeleRemoteCall.onAddressChanged, " + paramRemoteConnection + ", " + (String)localObject2, new Object[0]);
      if ((paramUri != null) || (paramInt != 0) || (a.d == null) || ((a.d.getState() != 1) && (a.d.getState() != 0))) {
        break;
      }
      ezi.c("Babel_telephony", "TeleRemoteCall.onAddressChanged, ignoring null address", new Object[0]);
      return;
      if (paramUri.getScheme().equals("tel"))
      {
        paramRemoteConnection = String.valueOf("tel:");
        localObject2 = String.valueOf(aal.s(paramUri.getSchemeSpecificPart()));
        if (((String)localObject2).length() != 0) {
          paramRemoteConnection = paramRemoteConnection.concat((String)localObject2);
        } else {
          paramRemoteConnection = new String(paramRemoteConnection);
        }
      }
      else
      {
        paramRemoteConnection = ezi.b(paramUri.toString());
      }
    }
    if ((a.d != null) && (!a.o()) && (!a.d.f().a(paramUri)))
    {
      if (!a.d.f().q()) {
        break label342;
      }
      localObject2 = a.d;
      if (paramUri != null) {
        break label299;
      }
      paramRemoteConnection = (RemoteConnection)localObject1;
      ((erg)localObject2).setAddress(paramRemoteConnection, paramInt);
    }
    for (;;)
    {
      a.c.a(paramUri);
      return;
      label299:
      paramRemoteConnection = paramUri.getSchemeSpecificPart();
      if ((paramUri.getScheme().equals("tel")) && (ezm.c(paramRemoteConnection)))
      {
        paramRemoteConnection = aal.r(ezm.a(paramRemoteConnection, ezm.i()));
        break;
      }
      paramRemoteConnection = paramUri;
      break;
      label342:
      if (a.d.f().o())
      {
        paramRemoteConnection = String.valueOf(aal.s(a.d.f().c()));
        if (paramRemoteConnection.length() != 0) {}
        for (paramRemoteConnection = "TeleRemoteCall.onAddressChanged, showing un-remapped number: ".concat(paramRemoteConnection);; paramRemoteConnection = new String("TeleRemoteCall.onAddressChanged, showing un-remapped number: "))
        {
          ezi.c("Babel_telephony", paramRemoteConnection, new Object[0]);
          a.d.setAddress(aal.r(a.d.f().c()), paramInt);
          break;
        }
      }
      a.d.setAddress(paramUri, paramInt);
    }
  }
  
  public void onCallerDisplayNameChanged(RemoteConnection paramRemoteConnection, String paramString, int paramInt)
  {
    paramRemoteConnection = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 43 + "TeleRemoteCall.onCallerDisplayNameChanged, " + paramRemoteConnection, new Object[0]);
    if (a.d != null) {
      a.d.setCallerDisplayName(paramString, paramInt);
    }
  }
  
  public void onConferenceChanged(RemoteConnection paramRemoteConnection, RemoteConference paramRemoteConference)
  {
    paramRemoteConnection = String.valueOf(paramRemoteConnection);
    paramRemoteConference = String.valueOf(paramRemoteConference);
    String str = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 71 + String.valueOf(paramRemoteConference).length() + String.valueOf(str).length() + "TeleRemoteCall.onConferenceChanged, remote connection: " + paramRemoteConnection + ", conference: " + paramRemoteConference + ", " + str, new Object[0]);
  }
  
  public void onConferenceableConnectionsChanged(RemoteConnection paramRemoteConnection, List<RemoteConnection> paramList)
  {
    paramRemoteConnection = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 51 + "TeleRemoteCall.onConferenceableConnectionsChanged, " + paramRemoteConnection, new Object[0]);
    if (a.d != null)
    {
      paramRemoteConnection = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        erg localerg = etc.a((RemoteConnection)paramList.next(), a.d.d());
        if (localerg != null) {
          paramRemoteConnection.add(localerg);
        }
      }
      a.d.setConferenceableConnections(paramRemoteConnection);
    }
  }
  
  public void onConnectionCapabilitiesChanged(RemoteConnection paramRemoteConnection, int paramInt)
  {
    paramRemoteConnection = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 75 + "TeleRemoteCall.onConnectionCapabilitiesChanged, capabilities: " + paramInt + ", " + paramRemoteConnection, new Object[0]);
    if (a.d != null) {
      a.d.setConnectionCapabilities(paramInt);
    }
  }
  
  public void onDestroyed(RemoteConnection paramRemoteConnection)
  {
    String str = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 28 + "TeleRemoteCall.onDestroyed, " + str, new Object[0]);
    if (paramRemoteConnection != null) {
      paramRemoteConnection.unregisterCallback(a.e);
    }
    paramRemoteConnection = a.b.iterator();
    while (paramRemoteConnection.hasNext()) {
      ((eqt)paramRemoteConnection.next()).a(a, new DisconnectCause(2));
    }
    if ((a.d != null) && (a.d.k() == null))
    {
      a.d.destroy();
      a.d = null;
    }
  }
  
  public void onDisconnected(RemoteConnection paramRemoteConnection, DisconnectCause paramDisconnectCause)
  {
    paramRemoteConnection = String.valueOf(paramDisconnectCause);
    String str = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 40 + String.valueOf(str).length() + "TeleRemoteCall.onDisconnected, cause: " + paramRemoteConnection + ", " + str, new Object[0]);
    if (a.d != null) {
      a.d.a(a.d(), a.c.b());
    }
    if ((a.d != null) && (a.d.k() == null))
    {
      if ((paramDisconnectCause.getCode() != 1) || (!a.o())) {
        break label284;
      }
      paramRemoteConnection = String.valueOf("TeleRemoteCall.onDisconnected, handing off to wifi., ");
      str = String.valueOf(a.d);
      ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 0 + String.valueOf(str).length() + paramRemoteConnection + str, new Object[0]);
      a.c.a(3);
      eru.b(a.a, a.d, 3);
    }
    for (;;)
    {
      paramRemoteConnection = a.b.iterator();
      while (paramRemoteConnection.hasNext()) {
        ((eqt)paramRemoteConnection.next()).a(a, paramDisconnectCause);
      }
      label284:
      a.d.setDisconnected(paramDisconnectCause);
      aal.a(a.d, paramDisconnectCause);
    }
  }
  
  public void onPostDialWait(RemoteConnection paramRemoteConnection, String paramString)
  {
    paramRemoteConnection = String.valueOf(ezi.b(paramString));
    String str = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 50 + String.valueOf(str).length() + "TeleRemoteCall.onPostDialWait, remainingDigits: " + paramRemoteConnection + ", " + str, new Object[0]);
    if (a.d != null) {
      a.d.setPostDialWait(paramString);
    }
  }
  
  public void onRingbackRequested(RemoteConnection paramRemoteConnection, boolean paramBoolean)
  {
    paramRemoteConnection = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 53 + "TeleRemoteCall.onRingbackRequested, ringback: " + paramBoolean + ", " + paramRemoteConnection, new Object[0]);
    if (a.d != null) {
      a.d.setRingbackRequested(paramBoolean);
    }
  }
  
  public void onStateChanged(RemoteConnection paramRemoteConnection, int paramInt)
  {
    if (a.d != null)
    {
      paramRemoteConnection = String.valueOf(Connection.stateToString(a.d.getState()));
      String str1 = String.valueOf(Connection.stateToString(paramInt));
      String str2 = String.valueOf(a.d);
      ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 37 + String.valueOf(str1).length() + String.valueOf(str2).length() + "TeleRemoteCall.onStateChanged, " + paramRemoteConnection + " -> " + str1 + ", " + str2, new Object[0]);
      switch (paramInt)
      {
      }
    }
    for (;;)
    {
      paramRemoteConnection = a.b.iterator();
      while (paramRemoteConnection.hasNext()) {
        ((eqt)paramRemoteConnection.next()).a(a, paramInt);
      }
      a.d.setRinging();
      continue;
      a.d.setDialing();
      continue;
      a.d.setActive();
      continue;
      a.d.setOnHold();
    }
  }
  
  public void onStatusHintsChanged(RemoteConnection paramRemoteConnection, StatusHints paramStatusHints)
  {
    paramRemoteConnection = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 37 + "TeleRemoteCall.onStatusHintsChanged, " + paramRemoteConnection, new Object[0]);
    if (a.d != null) {
      a.d.setStatusHints(paramStatusHints);
    }
  }
  
  public void onVoipAudioChanged(RemoteConnection paramRemoteConnection, boolean paramBoolean)
  {
    paramRemoteConnection = String.valueOf(a.d);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConnection).length() + 50 + "TeleRemoteCall.onVoipAudioChanged, isVoip: " + paramBoolean + ", " + paramRemoteConnection, new Object[0]);
    if (a.d != null) {
      a.d.setAudioModeIsVoip(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     etd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */