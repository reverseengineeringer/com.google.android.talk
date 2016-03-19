import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.telecom.AudioState;
import android.telecom.Connection;
import android.telecom.RemoteConnection;
import android.telecom.StatusHints;
import android.text.TextUtils;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

final class etc
  implements eqs
{
  final Context a;
  final List<eqt> b = new CopyOnWriteArrayList();
  final ete c;
  erg d;
  etd e = new etd(this);
  private RemoteConnection f;
  private boolean g;
  
  etc(Context paramContext, RemoteConnection paramRemoteConnection, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    a = paramContext;
    f = paramRemoteConnection;
    f.registerCallback(e);
    c = new ete(paramContext, paramString1, paramRemoteConnection.getAddress(), paramString2, paramString3, paramBoolean);
    a(c);
    if ((!paramBoolean) && (TextUtils.isEmpty(paramString1))) {
      aal.p(paramContext);
    }
  }
  
  static erg a(RemoteConnection paramRemoteConnection, TeleConnectionService paramTeleConnectionService)
  {
    paramTeleConnectionService = paramTeleConnectionService.getAllConnections().iterator();
    while (paramTeleConnectionService.hasNext())
    {
      Object localObject = (Connection)paramTeleConnectionService.next();
      if ((localObject instanceof erg))
      {
        localObject = (erg)localObject;
        if (((((erg)localObject).j() instanceof etc)) && (((etc)((erg)localObject).j()).n() == paramRemoteConnection)) {
          return (erg)localObject;
        }
      }
    }
    return null;
  }
  
  public erg a()
  {
    return d;
  }
  
  public void a(char paramChar)
  {
    String str1 = String.valueOf(ezi.b(String.valueOf(paramChar)));
    String str2 = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 36 + String.valueOf(str2).length() + "TeleRemoteCall.onPlayDtmfTone, c: " + str1 + ", " + str2, new Object[0]);
    if (f != null) {
      f.playDtmfTone(paramChar);
    }
  }
  
  public void a(int paramInt)
  {
    Object localObject = String.valueOf(Connection.stateToString(paramInt));
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 40 + String.valueOf(str).length() + "TeleRemoteCall.onStateChanged, state: " + (String)localObject + ", " + str, new Object[0]);
    if (paramInt == 1)
    {
      localObject = b.iterator();
      while (((Iterator)localObject).hasNext()) {
        ((eqt)((Iterator)localObject).next()).a(this, paramInt);
      }
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    ezi.c("Babel_telephony", 91 + "TeleRemoteCall.disconnectForHandoff, handoffReason: " + paramInt1 + ", new call code: " + paramInt2, new Object[0]);
    g();
  }
  
  public void a(AudioState paramAudioState)
  {
    String str1 = String.valueOf(paramAudioState);
    String str2 = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 45 + String.valueOf(str2).length() + "TeleRemoteCall.onAudioStateChanged, state: " + str1 + ", " + str2, new Object[0]);
    if (f != null) {
      f.setAudioState(paramAudioState);
    }
  }
  
  public void a(eqs parameqs)
  {
    String str1 = String.valueOf(parameqs);
    String str2 = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 41 + String.valueOf(str2).length() + "TeleRemoteCall.performConferenceWith : " + str1 + ", " + str2, new Object[0]);
    if (parameqs != null)
    {
      if ((parameqs instanceof etc)) {
        break label91;
      }
      ezi.d("Babel_telephony", "TeleRemoteCall.performConferenceWith. Conferencing Wifi and PSTN calls together is not supported yet.", new Object[0]);
    }
    label91:
    while (d == null) {
      return;
    }
    d.d().conferenceRemoteConnections(n(), ((etc)parameqs).n());
  }
  
  public void a(eqt parameqt)
  {
    b.add(parameqt);
  }
  
  public void a(erg paramerg)
  {
    String str1 = String.valueOf(d);
    String str2 = String.valueOf(paramerg);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 34 + String.valueOf(str2).length() + "TeleRemoteCall.setConnection, " + str1 + " -> " + str2, new Object[0]);
    if ((d != null) && (paramerg == null)) {
      d.a(d(), c.b());
    }
    d = paramerg;
    if (d == null) {
      return;
    }
    d.setAudioModeIsVoip(false);
    b();
  }
  
  public void a(ero paramero)
  {
    String str = String.valueOf(paramero);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 47 + "TeleRemoteCall.maybeAddExperiment, experiment: " + str, new Object[0]);
    c.a(paramero);
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void b()
  {
    String str1 = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 34 + "TeleRemoteCall.updateStatusHints, " + str1, new Object[0]);
    Object localObject1 = d.d();
    Object localObject2 = new ComponentName((Context)localObject1, TeleConnectionService.class);
    int i;
    if ((d.k() != null) && (d.getState() != 3))
    {
      str1 = aal.j((Context)localObject1);
      if (!TextUtils.isEmpty(str1))
      {
        str1 = ((Context)localObject1).getString(aal.qH, new Object[] { str1 });
        i = aal.qi;
      }
    }
    for (;;)
    {
      int j = i;
      String str2 = str1;
      if (str1 == null)
      {
        j = i;
        str2 = str1;
        if (o())
        {
          str1 = aal.i((Context)localObject1);
          j = i;
          str2 = str1;
          if (i == 0)
          {
            j = i;
            str2 = str1;
            if (!TextUtils.isEmpty(str1))
            {
              if (!g) {
                break label320;
              }
              j = aal.qk;
              str2 = str1;
            }
          }
        }
      }
      localObject2 = new StatusHints((ComponentName)localObject2, str2, j, null);
      if (!((StatusHints)localObject2).equals(d.getStatusHints())) {
        if (j != 0) {
          break label330;
        }
      }
      label320:
      label330:
      for (str1 = "0";; str1 = ((Context)localObject1).getResources().getResourceName(j))
      {
        localObject1 = String.valueOf(d);
        ezi.c("Babel_telephony", String.valueOf(str2).length() + 51 + String.valueOf(str1).length() + String.valueOf(localObject1).length() + "TeleRemoteCall.updateStatusHints, label: " + str2 + ", icon: " + str1 + ", " + (String)localObject1, new Object[0]);
        d.setStatusHints((StatusHints)localObject2);
        return;
        j = aal.qm;
        str2 = str1;
        break;
      }
      i = 0;
      str1 = null;
    }
  }
  
  public void b(eqt parameqt)
  {
    b.remove(parameqt);
  }
  
  public void b(boolean paramBoolean)
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 35 + "TeleRemoteCall.onPostDialContinue, " + str, new Object[0]);
    if (f != null) {
      f.postDialContinue(paramBoolean);
    }
  }
  
  public void c()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 37 + "TeleRemoteCall.performManualHandoff, " + str, new Object[0]);
    c.a(2);
    eru.b(a, d, 2);
  }
  
  public int d()
  {
    return 1;
  }
  
  public String e()
  {
    return c.a();
  }
  
  public void f()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 31 + "TeleRemoteCall.onStopDtmfTone, " + str, new Object[0]);
    if (f != null) {
      f.stopDtmfTone();
    }
  }
  
  public void g()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 29 + "TeleRemoteCall.onDisconnect, " + str, new Object[0]);
    if (f != null) {
      f.disconnect();
    }
  }
  
  public void h()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 27 + "TeleRemoteCall.onSeparate, " + str, new Object[0]);
  }
  
  public void i()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 24 + "TeleRemoteCall.onAbort, " + str, new Object[0]);
    if (f != null) {
      f.abort();
    }
  }
  
  public void j()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 23 + "TeleRemoteCall.onHold, " + str, new Object[0]);
    if (f != null) {
      f.hold();
    }
  }
  
  public void k()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 24 + "TeleRemoteCall.onUhold, " + str, new Object[0]);
    if (f != null) {
      f.unhold();
    }
  }
  
  public void l()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 25 + "TeleRemoteCall.onAnswer, " + str, new Object[0]);
    if (f != null)
    {
      f.answer();
      aal.p(a);
    }
  }
  
  public void m()
  {
    String str = String.valueOf(d);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 25 + "TeleRemoteCall.onReject, " + str, new Object[0]);
    if (f != null) {
      f.reject();
    }
  }
  
  RemoteConnection n()
  {
    return f;
  }
  
  boolean o()
  {
    return (d != null) && (!TextUtils.isEmpty(d.p()));
  }
}

/* Location:
 * Qualified Name:     etc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */