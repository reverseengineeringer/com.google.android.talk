import android.telecom.Connection;
import android.telecom.DisconnectCause;
import android.telecom.RemoteConference;
import android.telecom.RemoteConference.Callback;
import android.telecom.RemoteConnection;

final class eti
  extends RemoteConference.Callback
{
  eti(eth parameth) {}
  
  public void onConnectionAdded(RemoteConference paramRemoteConference, RemoteConnection paramRemoteConnection)
  {
    paramRemoteConference = String.valueOf(paramRemoteConference);
    String str = String.valueOf(paramRemoteConnection);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConference).length() + 73 + String.valueOf(str).length() + "TeleRemoteConferenceWrapper.onConnectionAdded, conference: " + paramRemoteConference + ", connection: " + str, new Object[0]);
    paramRemoteConference = etc.a(paramRemoteConnection, a.b);
    if (paramRemoteConference == null)
    {
      paramRemoteConference = String.valueOf("TeleRemoteConferenceWrapper.onConnectionAdded cannot find remote  connection: ");
      paramRemoteConnection = String.valueOf(paramRemoteConnection);
      ezi.d("Babel_telephony", String.valueOf(paramRemoteConference).length() + 0 + String.valueOf(paramRemoteConnection).length() + paramRemoteConference + paramRemoteConnection, new Object[0]);
      return;
    }
    a.addConnection(paramRemoteConference);
  }
  
  public void onConnectionCapabilitiesChanged(RemoteConference paramRemoteConference, int paramInt)
  {
    String str = String.valueOf("TeleRemoteConferenceWrapper.onConnectionCapabilitiesChanged, conference: ");
    paramRemoteConference = String.valueOf(paramRemoteConference);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 27 + String.valueOf(paramRemoteConference).length() + str + paramRemoteConference + ", capabilities: " + paramInt, new Object[0]);
    a.setConnectionCapabilities(paramInt);
  }
  
  public void onConnectionRemoved(RemoteConference paramRemoteConference, RemoteConnection paramRemoteConnection)
  {
    paramRemoteConference = String.valueOf(paramRemoteConference);
    String str = String.valueOf(paramRemoteConnection);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConference).length() + 75 + String.valueOf(str).length() + "TeleRemoteConferenceWrapper.onConnectionRemoved, conference: " + paramRemoteConference + ", connection: " + str, new Object[0]);
    paramRemoteConference = etc.a(paramRemoteConnection, a.b);
    if (paramRemoteConference == null)
    {
      paramRemoteConference = String.valueOf("TeleRemoteConferenceWrapper.onConnectionRemoved cannot find remote  connection: ");
      paramRemoteConnection = String.valueOf(paramRemoteConnection);
      ezi.d("Babel_telephony", String.valueOf(paramRemoteConference).length() + 0 + String.valueOf(paramRemoteConnection).length() + paramRemoteConference + paramRemoteConnection, new Object[0]);
      return;
    }
    a.removeConnection(paramRemoteConference);
  }
  
  public void onDestroyed(RemoteConference paramRemoteConference)
  {
    paramRemoteConference = String.valueOf(paramRemoteConference);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConference).length() + 53 + "TeleRemoteConferenceWrapper.onDestroyed, conference: " + paramRemoteConference, new Object[0]);
    a.a.unregisterCallback(a.c);
    a.destroy();
  }
  
  public void onDisconnected(RemoteConference paramRemoteConference, DisconnectCause paramDisconnectCause)
  {
    paramRemoteConference = String.valueOf(paramRemoteConference);
    String str = String.valueOf(paramDisconnectCause);
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConference).length() + 65 + String.valueOf(str).length() + "TeleRemoteConferenceWrapper.onDisconnected, conference: " + paramRemoteConference + ", cause: " + str, new Object[0]);
    a.setDisconnected(paramDisconnectCause);
  }
  
  public void onStateChanged(RemoteConference paramRemoteConference, int paramInt1, int paramInt2)
  {
    paramRemoteConference = String.valueOf(paramRemoteConference);
    String str1 = String.valueOf(Connection.stateToString(paramInt1));
    String str2 = String.valueOf(Connection.stateToString(paramInt2));
    ezi.c("Babel_telephony", String.valueOf(paramRemoteConference).length() + 62 + String.valueOf(str1).length() + String.valueOf(str2).length() + "TeleRemoteConferenceWrapper.onStateChanged, conference: " + paramRemoteConference + ", " + str1 + " -> " + str2, new Object[0]);
    a.a(paramInt2);
  }
}

/* Location:
 * Qualified Name:     eti
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */