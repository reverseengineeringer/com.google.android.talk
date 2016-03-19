import android.telecom.AudioState;
import android.telecom.Conference;
import android.telecom.Connection;
import android.telecom.PhoneAccountHandle;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class eug
  extends Conference
  implements erk
{
  private eug(PhoneAccountHandle paramPhoneAccountHandle)
  {
    super(paramPhoneAccountHandle);
    setConnectionCapabilities(67);
    setActive();
  }
  
  private erg a()
  {
    List localList = getConnections();
    if (localList.isEmpty()) {
      return null;
    }
    return (erg)localList.get(0);
  }
  
  static void a(TeleConnectionService paramTeleConnectionService, erg paramerg)
  {
    ezi.c("Babel_telephony", "TeleWifiConference.getOrCreateWifiConference", new Object[0]);
    Object localObject1 = paramTeleConnectionService.getAllConnections().iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = ((Connection)((Iterator)localObject1).next()).getConference();
      if ((localObject2 instanceof eug)) {
        localObject1 = (eug)localObject2;
      }
    }
    for (;;)
    {
      paramTeleConnectionService = paramTeleConnectionService.getAllConnections().iterator();
      while (paramTeleConnectionService.hasNext())
      {
        localObject2 = (erg)paramTeleConnectionService.next();
        if ((localObject2 == paramerg) || (eua.b((erg)localObject2)))
        {
          Object localObject3 = String.valueOf(localObject2);
          ezi.c("Babel_telephony", String.valueOf(localObject3).length() + 57 + "TeleWifiConference.adding connection to wifi conference: " + (String)localObject3, new Object[0]);
          localObject3 = ((erg)localObject2).getAudioState();
          if ((localObject3 != null) && (((AudioState)localObject3).isMuted()) && (((erg)localObject2).j() != null)) {
            ((eua)((erg)localObject2).j()).o();
          }
          ((eug)localObject1).addConnection((Connection)localObject2);
        }
      }
      ezi.c("Babel_telephony", "TeleWifiConference.createWifiConference", new Object[0]);
      localObject1 = new eug(aal.m(paramTeleConnectionService));
      paramTeleConnectionService.addConference((Conference)localObject1);
    }
  }
  
  public void a(erg paramerg, int paramInt)
  {
    if (paramInt == 4) {
      setActive();
    }
    do
    {
      do
      {
        return;
        if (paramInt == 5)
        {
          setOnHold();
          return;
        }
      } while (paramInt != 6);
      removeConnection(paramerg);
      paramerg.b(this);
    } while (getConnections().size() != 0);
    setDisconnected(paramerg.getDisconnectCause());
    destroy();
  }
  
  public void onAudioStateChanged(AudioState paramAudioState)
  {
    Object localObject = String.valueOf(paramAudioState);
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 40 + "TeleWifiConference.onAudioStateChanged, " + (String)localObject, new Object[0]);
    localObject = a();
    if (localObject != null)
    {
      ((erg)localObject).onAudioStateChanged(paramAudioState);
      return;
    }
    ezi.d("Babel_telephony", "No TeleConnection found while trying to change audio state.", new Object[0]);
  }
  
  public void onConnectionAdded(Connection paramConnection)
  {
    ((erg)paramConnection).a(this);
  }
  
  public void onDisconnect()
  {
    ezi.c("Babel_telephony", "TeleWifiConference.onDisconnect.", new Object[0]);
    Iterator localIterator = getConnections().iterator();
    while (localIterator.hasNext()) {
      ((Connection)localIterator.next()).onDisconnect();
    }
  }
  
  public void onHold()
  {
    ezi.c("Babel_telephony", "TeleWifiConference.onHold", new Object[0]);
    Iterator localIterator = getConnections().iterator();
    while (localIterator.hasNext()) {
      ((erg)localIterator.next()).onHold();
    }
  }
  
  public void onPlayDtmfTone(char paramChar)
  {
    erg localerg = a();
    if (localerg != null)
    {
      localerg.onPlayDtmfTone(paramChar);
      return;
    }
    ezi.d("Babel_telephony", "No TeleConnection found while trying to play dtmf tone.", new Object[0]);
  }
  
  public void onStopDtmfTone()
  {
    erg localerg = a();
    if (localerg != null)
    {
      localerg.onStopDtmfTone();
      return;
    }
    ezi.d("Babel_telephony", "No TeleConnection found while trying to stop dtmf tone.", new Object[0]);
  }
  
  public void onUnhold()
  {
    ezi.c("Babel_telephony", "TeleWifiConference.onUnhold", new Object[0]);
    Iterator localIterator = getConnections().iterator();
    while (localIterator.hasNext()) {
      ((erg)localIterator.next()).onUnhold();
    }
  }
}

/* Location:
 * Qualified Name:     eug
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */