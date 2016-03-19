import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.SystemClock;
import android.telecom.AudioState;
import android.telecom.Connection;
import android.telecom.ConnectionRequest;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class erg
  extends Connection
{
  private static final IntentFilter c = new IntentFilter("com.google.android.intent.action.CALL_STATE_BUTTON_TOUCHED");
  private static int d = 0;
  final eqp a;
  eqs b;
  private final Handler e = new Handler();
  private final List<erk> f = new CopyOnWriteArrayList();
  private final esw g;
  private final String h;
  private final long i = SystemClock.elapsedRealtime();
  private eru j;
  private boolean k;
  private String l;
  private String m;
  private int n;
  private String o;
  private String p;
  private String q;
  private StringBuilder r = new StringBuilder();
  private String s = "";
  private BroadcastReceiver t;
  private eri u;
  private boolean v;
  private boolean w;
  private ero x;
  private ere y;
  private int z;
  
  public erg(esw paramesw)
  {
    this(paramesw, null);
  }
  
  erg(esw paramesw, String paramString)
  {
    g = paramesw;
    String str = paramString;
    if (paramString == null)
    {
      new hlo();
      str = hlo.a();
    }
    h = str;
    setInitializing();
    setAddress(paramesw.h().getAddress(), 1);
    setConnectionCapabilities(66);
    a = new eqp(h);
    a.a(new int[] { 200 });
    d += 1;
    z = d;
  }
  
  private void z()
  {
    TeleConnectionService localTeleConnectionService = d();
    int i1;
    if ((b != null) && (getState() == 4))
    {
      i1 = 1;
      if ((i1 == 0) || (t != null)) {
        break label74;
      }
      ezi.c("Babel_telephony", "TeleConnection.updateHandoffReceiver, registering receiver", new Object[0]);
      t = new erj(this);
      localTeleConnectionService.registerReceiver(t, c);
    }
    label74:
    while ((i1 != 0) || (t == null))
    {
      return;
      i1 = 0;
      break;
    }
    ezi.c("Babel_telephony", "updateHandoffReceiver, unregistering receiver", new Object[0]);
    localTeleConnectionService.unregisterReceiver(t);
    t = null;
  }
  
  eqp a()
  {
    return a;
  }
  
  void a(int paramInt)
  {
    n = paramInt;
  }
  
  void a(int paramInt, long paramLong)
  {
    StringBuilder localStringBuilder = r;
    if (paramInt == 2) {}
    for (String str = "w";; str = "c")
    {
      localStringBuilder.append(str);
      r.append(paramLong);
      return;
    }
  }
  
  void a(eqs parameqs)
  {
    b(parameqs);
  }
  
  void a(eri parameri)
  {
    u = parameri;
  }
  
  public void a(erk paramerk)
  {
    f.add(paramerk);
  }
  
  void a(ero paramero)
  {
    x = paramero;
  }
  
  void a(eru parameru)
  {
    String str1 = String.valueOf(j);
    String str2 = String.valueOf(parameru);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 38 + String.valueOf(str2).length() + "TeleConnection.setPendingHandoff, " + str1 + " -> " + str2, new Object[0]);
    j = parameru;
    if (j != null)
    {
      k = true;
      setConnectionCapabilities(getConnectionCapabilities() & 0xFFFFFFFD);
      return;
    }
    setConnectionCapabilities(getConnectionCapabilities() | 0x2);
  }
  
  void a(String paramString)
  {
    l = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    v = paramBoolean;
  }
  
  void b()
  {
    g.a(1);
  }
  
  void b(eqs parameqs)
  {
    String str1 = String.valueOf(b);
    String str2 = String.valueOf(parameqs);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 28 + String.valueOf(str2).length() + "TeleConnection.setCall, " + str1 + " -> " + str2, new Object[0]);
    if (b != null) {
      b.a(null);
    }
    b = parameqs;
    if (b != null)
    {
      b.a(this);
      if (x != null) {
        b.a(x);
      }
    }
    z();
  }
  
  public void b(erk paramerk)
  {
    f.remove(paramerk);
  }
  
  void b(String paramString)
  {
    m = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    w = paramBoolean;
  }
  
  void c()
  {
    g.a(2);
  }
  
  void c(String paramString)
  {
    o = paramString;
  }
  
  public TeleConnectionService d()
  {
    return g.j();
  }
  
  void d(String paramString)
  {
    p = paramString;
  }
  
  ConnectionRequest e()
  {
    return g.i();
  }
  
  void e(String paramString)
  {
    q = paramString;
  }
  
  public esw f()
  {
    return g;
  }
  
  public boolean g()
  {
    return g.k();
  }
  
  public est h()
  {
    return g.b();
  }
  
  public String i()
  {
    return h;
  }
  
  public eqs j()
  {
    return b;
  }
  
  eru k()
  {
    return j;
  }
  
  public boolean l()
  {
    return k;
  }
  
  public String m()
  {
    return l;
  }
  
  public String n()
  {
    return m;
  }
  
  int o()
  {
    return n;
  }
  
  public void onAbort()
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 22 + "TeleConnection.onAbort" + str, new Object[0]);
    if (b != null) {
      b.i();
    }
  }
  
  public void onAnswer()
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 23 + "TeleConnection.onAnswer" + str, new Object[0]);
    if (b != null) {
      b.l();
    }
  }
  
  public void onAudioStateChanged(AudioState paramAudioState)
  {
    String str = String.valueOf(paramAudioState);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 43 + "TeleConnection.onAudioStateChanged, state: " + str, new Object[0]);
    if (b != null) {
      b.a(paramAudioState);
    }
  }
  
  public void onDisconnect()
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 27 + "TeleConnection.onDisconnect" + str, new Object[0]);
    if (j != null) {
      j.e();
    }
    do
    {
      return;
      if (b != null)
      {
        b.g();
        return;
      }
    } while (u == null);
    u.a();
  }
  
  public void onHold()
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 21 + "TeleConnection.onHold" + str, new Object[0]);
    if (b != null) {
      b.j();
    }
  }
  
  public void onPlayDtmfTone(char paramChar)
  {
    char c1 = aal.a(paramChar);
    ezi.c("Babel_telephony", 35 + "TeleConnection.onPlayDtmfTone, c: " + c1, new Object[0]);
    if (b != null) {
      b.a(paramChar);
    }
    imx localimx = ezi.s;
  }
  
  public void onPostDialContinue(boolean paramBoolean)
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 49 + "TeleConnection.onPostDialContinue, proceed: " + paramBoolean + str, new Object[0]);
    if (b != null) {
      b.b(paramBoolean);
    }
  }
  
  public void onReject()
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 23 + "TeleConnection.onReject" + str, new Object[0]);
    if (b != null) {
      b.m();
    }
  }
  
  public void onSeparate()
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 25 + "TeleConnection.onSeparate" + str, new Object[0]);
    if (b != null) {
      b.h();
    }
  }
  
  public void onStateChanged(int paramInt)
  {
    if (paramInt == 6)
    {
      localObject = new erh(this);
      e.postDelayed((Runnable)localObject, 15000L);
    }
    Object localObject = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 29 + "TeleConnection.onStateChanged" + (String)localObject, new Object[0]);
    if (b != null) {
      b.a(paramInt);
    }
    localObject = f.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((erk)((Iterator)localObject).next()).a(this, paramInt);
    }
    z();
  }
  
  public void onStopDtmfTone()
  {
    ezi.c("Babel_telephony", "TeleConnection.onStopDtmfTone", new Object[0]);
    if (b != null) {
      b.f();
    }
  }
  
  public void onUnhold()
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 23 + "TeleConnection.onUnhold" + str, new Object[0]);
    if (b != null) {
      b.k();
    }
  }
  
  public String p()
  {
    return o;
  }
  
  public String q()
  {
    return p;
  }
  
  public String r()
  {
    return q;
  }
  
  public ero s()
  {
    return x;
  }
  
  public String t()
  {
    return r.toString();
  }
  
  public String toString()
  {
    int i1 = z;
    String str = String.valueOf(Connection.stateToString(getState()));
    return String.valueOf(str).length() + 33 + " connection: " + i1 + " ,state: " + str;
  }
  
  public boolean u()
  {
    return v;
  }
  
  public boolean v()
  {
    return w;
  }
  
  public void w()
  {
    Object localObject = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 35 + "TeleConnection.startConnectingSound" + (String)localObject, new Object[0]);
    int i1;
    if (y == null)
    {
      localObject = d();
      boolean bool = g();
      ezi.c("Babel_telephony", "TeleConnectingSoundPlayer.startConnectingSoundIfNecessary", new Object[0]);
      if (!bool) {
        break label110;
      }
      i1 = aal.a((Context)localObject, "babel_connecting_sound_incoming_delay_millis", 0);
      if (i1 >= 0) {
        break label122;
      }
      ezi.c("Babel_telephony", "TeleConnectingSoundPlayer.startConnectingSoundIfNecessary, disabled", new Object[0]);
      localObject = null;
    }
    for (;;)
    {
      y = ((ere)localObject);
      return;
      label110:
      i1 = aal.a((Context)localObject, "babel_connecting_sound_outgoing_delay_millis", -1);
      break;
      label122:
      localObject = new ere((Context)localObject, i1);
      ((ere)localObject).a();
    }
  }
  
  public void x()
  {
    String str = String.valueOf(this);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 34 + "TeleConnection.stopConnectingSound" + str, new Object[0]);
    if (y != null)
    {
      y.b();
      y = null;
    }
  }
  
  public long y()
  {
    return SystemClock.elapsedRealtime() - i;
  }
}

/* Location:
 * Qualified Name:     erg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */