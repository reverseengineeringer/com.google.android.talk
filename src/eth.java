import android.telecom.AudioState;
import android.telecom.Conference;
import android.telecom.Connection;
import android.telecom.ConnectionRequest;
import android.telecom.PhoneAccountHandle;
import android.telecom.RemoteConference;
import android.telecom.RemoteConference.Callback;
import android.telecom.RemoteConnection;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Iterator;
import java.util.List;

public final class eth
  extends Conference
{
  final RemoteConference a;
  final TeleConnectionService b;
  final RemoteConference.Callback c = new eti(this);
  
  private eth(PhoneAccountHandle paramPhoneAccountHandle, RemoteConference paramRemoteConference, TeleConnectionService paramTeleConnectionService)
  {
    super(paramPhoneAccountHandle);
    a = paramRemoteConference;
    b = paramTeleConnectionService;
    setConnectionCapabilities(paramRemoteConference.getConnectionCapabilities());
    a(paramRemoteConference.getState());
    paramRemoteConference.registerCallback(c);
    paramPhoneAccountHandle = paramRemoteConference.getConnections().iterator();
    while (paramPhoneAccountHandle.hasNext())
    {
      paramRemoteConference = (RemoteConnection)paramPhoneAccountHandle.next();
      Object localObject = etc.a(paramRemoteConference, paramTeleConnectionService);
      if (localObject != null)
      {
        if (!addConnection((Connection)localObject))
        {
          paramRemoteConference = String.valueOf(localObject);
          ezi.c("Babel_telephony", String.valueOf(paramRemoteConference).length() + 66 + "TeleRemoteConferenceWrapper, failed to add conference connection: " + paramRemoteConference, new Object[0]);
        }
      }
      else
      {
        localObject = String.valueOf("TeleRemoteConferenceWrapper, failed to find connection for remote connection: ");
        paramRemoteConference = String.valueOf(paramRemoteConference);
        ezi.c("Babel_telephony", String.valueOf(localObject).length() + 0 + String.valueOf(paramRemoteConference).length() + (String)localObject + paramRemoteConference, new Object[0]);
      }
    }
  }
  
  public static eth a(RemoteConference paramRemoteConference, TeleConnectionService paramTeleConnectionService)
  {
    Object localObject1 = paramRemoteConference.getConnections().iterator();
    Object localObject2;
    do
    {
      if (!((Iterator)localObject1).hasNext()) {
        break;
      }
      localObject2 = etc.a((RemoteConnection)((Iterator)localObject1).next(), paramTeleConnectionService);
    } while ((localObject2 == null) || (((erg)localObject2).e() == null));
    for (localObject1 = ((erg)localObject2).e().getAccountHandle();; localObject1 = null)
    {
      if (localObject1 == null)
      {
        localObject2 = String.valueOf("TeleRemoteConferenceWrapper.createConferenceWrapper, didn't find phone account to add to conference: ");
        String str = String.valueOf(paramRemoteConference);
        ezi.d("Babel_telephony", String.valueOf(localObject2).length() + 0 + String.valueOf(str).length() + (String)localObject2 + str, new Object[0]);
      }
      return new eth((PhoneAccountHandle)localObject1, paramRemoteConference, paramTeleConnectionService);
    }
  }
  
  void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      String str = String.valueOf("TeleRemoteConferenceWrapper.updateState. unrecognized state for Conference: ");
      ezi.d("Babel_telephony", String.valueOf(str).length() + 11 + str + paramInt, new Object[0]);
    case 6: 
      return;
    case 5: 
      setOnHold();
      return;
    }
    setActive();
  }
  
  public void onAudioStateChanged(AudioState paramAudioState)
  {
    String str = String.valueOf(paramAudioState);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 56 + "TeleRemoteConferenceWrapper.onAudioStateChanged, state: " + str, new Object[0]);
    a.setAudioState(paramAudioState);
  }
  
  public void onDisconnect()
  {
    ezi.c("Babel_telephony", "TeleRemoteConferenceWrapper.onDisconnect", new Object[0]);
    a.disconnect();
  }
  
  public void onHold()
  {
    ezi.c("Babel_telephony", "TeleRemoteConferenceWrapper.onHold", new Object[0]);
    a.hold();
  }
  
  public void onMerge()
  {
    ezi.c("Babel_telephony", "TeleRemoteConferenceWrapper.onMerge", new Object[0]);
    a.merge();
  }
  
  public void onPlayDtmfTone(char paramChar)
  {
    String str = String.valueOf(ezi.b(String.valueOf(paramChar)));
    if (str.length() != 0) {}
    for (str = "TeleRemoteConferenceWrapper.onPlayDtmfTone, ".concat(str);; str = new String("TeleRemoteConferenceWrapper.onPlayDtmfTone, "))
    {
      ezi.c("Babel_telephony", str, new Object[0]);
      a.playDtmfTone(paramChar);
      return;
    }
  }
  
  public void onSeparate(Connection paramConnection)
  {
    String str = String.valueOf(paramConnection);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 52 + "TeleRemoteConferenceWrapper.onSeparate, connection: " + str, new Object[0]);
    if ((a != null) && ((paramConnection instanceof erg)))
    {
      paramConnection = ((erg)paramConnection).j();
      if ((paramConnection instanceof etc)) {
        a.separate(((etc)paramConnection).n());
      }
    }
  }
  
  public void onStopDtmfTone()
  {
    ezi.c("Babel_telephony", "TeleRemoteConferenceWrapper.onStopDtmfTone", new Object[0]);
    a.stopDtmfTone();
  }
  
  public void onSwap()
  {
    ezi.c("Babel_telephony", "TeleRemoteConferenceWrapper.onSwap", new Object[0]);
    a.swap();
  }
  
  public void onUnhold()
  {
    ezi.c("Babel_telephony", "TeleRemoteConferenceWrapper.onUnhold", new Object[0]);
    a.unhold();
  }
}

/* Location:
 * Qualified Name:     eth
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */