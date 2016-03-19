import android.content.ComponentName;
import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.SystemClock;
import android.telecom.AudioState;
import android.telecom.Conference;
import android.telecom.DisconnectCause;
import android.telecom.StatusHints;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public final class eua
  implements eqs, eqv, etx, eui
{
  final Context a;
  final String b;
  erg c;
  cgw d;
  int e;
  boolean f;
  String g;
  ero h;
  euc i;
  int j;
  Runnable k;
  private final List<eqt> l = new CopyOnWriteArrayList();
  private eue m;
  private eud n;
  private long o;
  private long p;
  private euh q;
  private equ r;
  private esx s;
  private boolean t;
  private etv u;
  
  eua(Context paramContext, eue parameue, String paramString, boolean paramBoolean)
  {
    a = paramContext;
    m = parameue;
    b = paramString;
    if ((!paramBoolean) && (TextUtils.isEmpty(paramString)))
    {
      s = new esx(this);
      a(s);
    }
  }
  
  static int a(juf paramjuf, boolean paramBoolean)
  {
    int i1 = 8;
    if (b.equals(Integer.valueOf(1))) {
      if (paramBoolean)
      {
        i1 = 2872;
        aal.c(i1);
        i1 = 6;
      }
    }
    do
    {
      return i1;
      i1 = 2873;
      break;
      if (b.equals(Integer.valueOf(0)))
      {
        if (paramBoolean) {}
        for (i1 = 2870;; i1 = 2871)
        {
          aal.c(i1);
          return 5;
        }
      }
      if (b.equals(Integer.valueOf(2)))
      {
        if (paramBoolean) {}
        for (i1 = 2874;; i1 = 2875)
        {
          aal.c(i1);
          return 7;
        }
      }
      if (b.equals(Integer.valueOf(5)))
      {
        if (paramBoolean) {}
        for (i1 = 2868;; i1 = 2869)
        {
          aal.c(i1);
          return 9;
        }
      }
    } while (!b.equals(Integer.valueOf(4)));
    return 8;
  }
  
  static void a(TeleConnectionService paramTeleConnectionService, erg paramerg)
  {
    paramTeleConnectionService = paramTeleConnectionService.getAllConnections().iterator();
    while (paramTeleConnectionService.hasNext())
    {
      erg localerg = (erg)paramTeleConnectionService.next();
      if ((localerg == paramerg) || (b(localerg))) {
        localerg.onHold();
      }
    }
  }
  
  static boolean a(TeleConnectionService paramTeleConnectionService)
  {
    paramTeleConnectionService = paramTeleConnectionService.getAllConnections().iterator();
    while (paramTeleConnectionService.hasNext()) {
      if (b((erg)paramTeleConnectionService.next())) {
        return true;
      }
    }
    return false;
  }
  
  private static void b(TeleConnectionService paramTeleConnectionService, erg paramerg)
  {
    paramTeleConnectionService = paramTeleConnectionService.getAllConnections().iterator();
    while (paramTeleConnectionService.hasNext())
    {
      erg localerg = (erg)paramTeleConnectionService.next();
      if ((localerg == paramerg) || (b(localerg))) {
        localerg.onUnhold();
      }
    }
  }
  
  public static boolean b(erg paramerg)
  {
    return (paramerg.j() != null) && (paramerg.j().d() == 2);
  }
  
  private void d(boolean paramBoolean)
  {
    if (d != null) {
      if (c.getState() != 5) {
        break label99;
      }
    }
    label99:
    for (boolean bool = true;; bool = false)
    {
      String str = String.valueOf(c);
      ezi.c("Babel_telephony", String.valueOf(str).length() + 80 + "TeleWifiCall.updateHangoutAudioState, muteMic: " + paramBoolean + ", shouldMuteSpeaker: " + bool + ", " + str, new Object[0]);
      cfc.a().a(paramBoolean);
      cfc.a().b(bool);
      return;
    }
  }
  
  private void e(int paramInt)
  {
    if (c == null)
    {
      String str = String.valueOf(c);
      ezi.c("Babel_telephony", String.valueOf(str).length() + 51 + "TeleWifiCall.handoffToCircuitSwitched, connection: " + str, new Object[0]);
      return;
    }
    ezi.c("Babel_telephony", 65 + "TeleWifiCall.handoffToCircuitSwitched, handoffReason: " + paramInt, new Object[0]);
    if (c.v()) {
      aal.c(2904);
    }
    for (;;)
    {
      c(paramInt);
      eru.a(a, c, paramInt);
      b();
      return;
      aal.c(2901);
    }
  }
  
  private void f(int paramInt)
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 46 + "TeleWifiCall.exitHangout, cause: " + paramInt + ", " + str, new Object[0]);
    if ((d != null) && (d == cfc.a().r()))
    {
      r();
      d.b(paramInt);
      return;
    }
    str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 72 + "TeleWifiCall.exitHangout, hangout has already exited, short circuiting, " + str, new Object[0]);
    a(d(paramInt));
  }
  
  private void r()
  {
    if ((c != null) && (TextUtils.isEmpty(c.p())) && (d != null) && (d == cfc.a().r())) {
      c.c(d.e().g());
    }
  }
  
  private boolean s()
  {
    if ((d == null) || (c == null)) {
      return false;
    }
    if ((aal.a(a, c.h().c(), c.g())) || (aal.b(a, c.h().c(), c.g()))) {
      return true;
    }
    if (c.g()) {
      return aal.a(a, "babel_lte_incoming_call_allowed", false);
    }
    return aal.a(a, "babel_lte_outgoing_call_allowed", false);
  }
  
  private void t()
  {
    if (c(false)) {
      return;
    }
    int i1 = aal.a(a, "babel_handoff_lte_reconnect_timeout_millis", 5000);
    if (k == null) {
      k = new eub(this);
    }
    aal.a(k, i1);
  }
  
  private void u()
  {
    int i1 = 66;
    if ((c.getState() == 4) || (c.getState() == 5)) {
      i1 = 67;
    }
    if (c.getConnectionCapabilities() != i1) {
      c.setConnectionCapabilities(i1);
    }
  }
  
  private long v()
  {
    if (o == 0L) {
      return -1L;
    }
    long l2 = p;
    long l1 = l2;
    if (l2 == 0L) {
      l1 = SystemClock.elapsedRealtime();
    }
    return l1 - o;
  }
  
  public erg a()
  {
    return c;
  }
  
  public void a(char paramChar)
  {
    char c1 = aal.a(paramChar);
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 35 + "TeleWifiCall.onPlayDtmfTone, c: " + c1 + ", " + str, new Object[0]);
    if (d != null) {
      d.a(paramChar);
    }
  }
  
  public void a(int paramInt)
  {
    Object localObject = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 29 + "TeleWifiCall.onStateChanged, " + (String)localObject, new Object[0]);
    if ((paramInt == 6) && (p == 0L)) {
      p = SystemClock.elapsedRealtime();
    }
    localObject = l.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((eqt)((Iterator)localObject).next()).a(this, paramInt);
    }
    u();
    if ((paramInt != 3) && (paramInt != 2) && (paramInt != 1) && (paramInt != 0)) {
      c.x();
    }
    if (paramInt == 4) {
      b(c.d(), c);
    }
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    ezi.c("Babel_telephony", 90 + "TeleWifiCall.disconnectForHandoff, handoffReason + " + paramInt1 + ", new call code: " + paramInt2, new Object[0]);
    if (paramInt2 == 0)
    {
      f(1015);
      return;
    }
    if (paramInt1 == 3)
    {
      ezi.c("Babel_telephony", 51 + "TeleWifiCall.setHandoffEventCode, code: " + paramInt2, new Object[0]);
      if ((d != null) && (d.q() != null)) {
        d.q().k().c(paramInt2);
      }
      f(1018);
      return;
    }
    f(1004);
  }
  
  public void a(AudioState paramAudioState)
  {
    boolean bool2 = false;
    String str1 = String.valueOf(paramAudioState);
    String str2 = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 43 + String.valueOf(str2).length() + "TeleWifiCall.onAudioStateChanged, state: " + str1 + ", " + str2, new Object[0]);
    boolean bool1 = bool2;
    if (paramAudioState != null)
    {
      bool1 = bool2;
      if (paramAudioState.isMuted()) {
        bool1 = true;
      }
    }
    d(bool1);
  }
  
  void a(DisconnectCause paramDisconnectCause)
  {
    Object localObject = String.valueOf(paramDisconnectCause);
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 29 + String.valueOf(str).length() + "TeleWifiCall.close, cause: " + (String)localObject + ", " + str, new Object[0]);
    r();
    if (k != null)
    {
      localObject = k;
      aal.y().removeCallbacks((Runnable)localObject);
      k = null;
    }
    if (n != null)
    {
      cfc.a().b(n);
      n = null;
    }
    if (m != null)
    {
      m.b();
      m = null;
    }
    if (q != null)
    {
      q.a();
      q = null;
    }
    if (u != null)
    {
      u.a();
      u = null;
    }
    if (r != null)
    {
      r.a();
      r = null;
    }
    if (s != null)
    {
      b(s);
      s = null;
    }
    if (i != null)
    {
      RealTimeChatService.b(i);
      i = null;
    }
    if (c != null)
    {
      c.a(d(), v());
      if (c.k() == null)
      {
        c.x();
        if (c.getConference() != null) {
          c.getConference().removeConnection(c);
        }
        if (paramDisconnectCause != null)
        {
          c.setDisconnected(paramDisconnectCause);
          aal.a(c, paramDisconnectCause);
        }
        c.destroy();
      }
    }
    c = null;
    d = null;
    localObject = l.iterator();
    while (((Iterator)localObject).hasNext()) {
      ((eqt)((Iterator)localObject).next()).a(this, paramDisconnectCause);
    }
  }
  
  void a(cgw paramcgw)
  {
    String str1 = String.valueOf(paramcgw);
    String str2 = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 46 + String.valueOf(str2).length() + "TeleWifiCall.setHangoutState, hangoutState: " + str1 + ", " + str2, new Object[0]);
    d = paramcgw;
    f = d.C();
    if (n == null)
    {
      n = new eud(this);
      cfc.a().a(n);
    }
    if ((TextUtils.isEmpty(b)) && (c != null) && (c.d().getAllConnections().size() == 1)) {
      aal.p(a);
    }
  }
  
  public void a(eqs parameqs)
  {
    parameqs = String.valueOf(parameqs);
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(parameqs).length() + 39 + String.valueOf(str).length() + "TeleWifiCall.performConferenceWith : " + parameqs + ", " + str, new Object[0]);
  }
  
  public void a(eqt parameqt)
  {
    l.add(parameqt);
  }
  
  public void a(erc paramerc, boolean paramBoolean)
  {
    if (s())
    {
      paramerc = String.valueOf(paramerc);
      ezi.c("Babel_telephony", String.valueOf(paramerc).length() + 65 + "TeleWifiCall.onCellStateChanged, " + paramerc + " , isConnectedToInternet : " + paramBoolean, new Object[0]);
      t();
    }
  }
  
  public void a(erg paramerg)
  {
    if ((c != null) && (paramerg == null)) {
      c.a(d(), v());
    }
    c = paramerg;
    if (c != null)
    {
      c.setAudioModeIsVoip(true);
      u();
      b();
      if (o == 0L) {
        o = SystemClock.elapsedRealtime();
      }
      if (q == null)
      {
        q = new euh(c.d());
        q.a(this);
      }
      if (r == null)
      {
        r = new equ(a);
        r.a(this);
      }
      if ((u == null) && (Build.VERSION.SDK_INT >= 23))
      {
        u = new etv(a);
        u.a(this);
      }
    }
  }
  
  public void a(ero paramero)
  {
    String str = String.valueOf(paramero);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 45 + "TeleWifiCall.maybeAddExperiment, experiment: " + str, new Object[0]);
    h = paramero;
  }
  
  public void a(eum parameum)
  {
    if (s())
    {
      parameum = String.valueOf(parameum);
      ezi.c("Babel_telephony", String.valueOf(parameum).length() + 33 + "TeleWifiCall.onWifiStateChanged, " + parameum, new Object[0]);
      t();
    }
    int i1;
    do
    {
      return;
      i1 = ((TelephonyManager)a.getSystemService("phone")).getNetworkType();
      if (c == null) {
        break;
      }
      if (!a)
      {
        c(3);
        eru.a(a, c, 3);
        return;
      }
    } while (aal.a(a, c.h(), parameum, i1));
    c(1);
    eru.a(a, c, 1);
    return;
    parameum = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(parameum).length() + 48 + "TeleWifiCall.onWifiStateChanged, no connection, " + parameum, new Object[0]);
  }
  
  public void a(boolean paramBoolean)
  {
    t = paramBoolean;
  }
  
  public void b()
  {
    if (c == null) {
      return;
    }
    String str1 = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 32 + "TeleWifiCall.updateStatusHints, " + str1, new Object[0]);
    TeleConnectionService localTeleConnectionService = c.d();
    Object localObject = new ComponentName(localTeleConnectionService, TeleConnectionService.class);
    int i1;
    if ((c.k() != null) && (c.getState() != 3))
    {
      str1 = aal.i(localTeleConnectionService);
      if (TextUtils.isEmpty(str1)) {
        break label410;
      }
      str1 = localTeleConnectionService.getString(aal.qH, new Object[] { str1 });
      i1 = aal.ql;
    }
    for (;;)
    {
      int i2 = i1;
      String str2 = str1;
      if (str1 == null)
      {
        str1 = aal.j(localTeleConnectionService);
        i2 = i1;
        str2 = str1;
        if (i1 == 0)
        {
          i2 = i1;
          str2 = str1;
          if (!TextUtils.isEmpty(str1))
          {
            if (!t) {
              break label385;
            }
            i2 = aal.qj;
            str2 = str1;
          }
        }
      }
      label196:
      localObject = new StatusHints((ComponentName)localObject, str2, i2, null);
      if (((StatusHints)localObject).equals(c.getStatusHints())) {
        break;
      }
      if (i2 == 0) {}
      for (str1 = "0";; str1 = localTeleConnectionService.getResources().getResourceName(i2))
      {
        ezi.c("Babel_telephony", String.valueOf(str2).length() + 47 + String.valueOf(str1).length() + "TeleWifiCall.updateStatusHints, label: " + str2 + ", icon: " + str1, new Object[0]);
        c.setStatusHints((StatusHints)localObject);
        return;
        if (!c.v()) {
          break label410;
        }
        i2 = aal.qm;
        int i3 = ((TelephonyManager)localTeleConnectionService.getSystemService("phone")).getNetworkType();
        if (aal.l(i3)) {}
        for (i1 = aal.qP;; i1 = aal.qA)
        {
          str1 = localTeleConnectionService.getString(i1, new Object[] { aal.i(localTeleConnectionService), aal.k(i3) });
          i1 = i2;
          break;
        }
        label385:
        i2 = aal.qn;
        str2 = str1;
        break label196;
      }
      label410:
      i1 = 0;
      str1 = null;
    }
  }
  
  void b(int paramInt)
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 61 + "TeleWifiCall.cancelIncomingCall, dismissReason: " + paramInt + ", " + str, new Object[0]);
    int i1;
    if (paramInt == 1)
    {
      i1 = 4;
      switch (paramInt)
      {
      default: 
        str = 63 + "HangoutInviteNotification.UNEXPECTED_DISSMIS_REASON_" + paramInt;
        label123:
        str = String.valueOf(str);
        if (str.length() == 0) {
          break;
        }
      }
    }
    for (str = "cancel ring, dismiss reason: ".concat(str);; str = new String("cancel ring, dismiss reason: "))
    {
      a(new DisconnectCause(i1, str));
      return;
      i1 = 5;
      break;
      str = "UNKNOWN";
      break label123;
      str = "USER_RESPONDED";
      break label123;
      str = "USER_KICKED";
      break label123;
      str = "INVITER_CANCELLED";
      break label123;
      str = "INVITE_TIMEOUT";
      break label123;
    }
  }
  
  public void b(int paramInt1, int paramInt2)
  {
    String str = String.valueOf(etv.b(paramInt1));
    boolean bool;
    int i2;
    if (str.length() != 0)
    {
      str = "TeleWifiCall.onActivityTypeChanged, activityType: ".concat(str);
      ezi.c("Babel_telephony", str, new Object[0]);
      bool = aal.a(a, "babel_activity_handoff_allowed", true);
      int i1 = aal.a(a, "babel_biking_handoff_confidence_percentage_threshold", 75);
      i2 = aal.a(a, "babel_driving_handoff_confidence_percentage_threshold", 75);
      if ((paramInt1 != 1) || (paramInt2 < i1)) {
        break label130;
      }
      if (!bool) {
        break label123;
      }
      paramInt1 = 2973;
      aal.c(paramInt1);
      e(10);
    }
    label123:
    label130:
    while ((paramInt1 != 0) || (paramInt2 < i2)) {
      for (;;)
      {
        return;
        str = new String("TeleWifiCall.onActivityTypeChanged, activityType: ");
        break;
        paramInt1 = 2974;
      }
    }
    if (bool) {}
    for (paramInt1 = 2975;; paramInt1 = 2976)
    {
      aal.c(paramInt1);
      e(10);
      return;
    }
  }
  
  public void b(eqt parameqt)
  {
    l.remove(parameqt);
  }
  
  public void b(boolean paramBoolean)
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 33 + "TeleWifiCall.onPostDialContinue, " + str, new Object[0]);
    s.a(paramBoolean);
  }
  
  public void c()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 35 + "TeleWifiCall.performManualHandoff, " + str, new Object[0]);
    c(2);
    eru.a(a, c, 2);
  }
  
  void c(int paramInt)
  {
    if ((d != null) && (d.q() != null)) {
      d.q().k().b(paramInt);
    }
  }
  
  boolean c(boolean paramBoolean)
  {
    ezi.c("Babel_telephony", 55 + "TeleWifiCall.triggerNetworkSwitch, disconnectCall " + paramBoolean, new Object[0]);
    if ((c == null) || (d == null))
    {
      ezi.c("Babel_telephony", "TeleWifiCall.triggerNetworkSwitch, call not ongoing", new Object[0]);
      return true;
    }
    boolean bool1 = aal.k(a);
    erc localerc = r.b();
    Object localObject = String.valueOf(localerc);
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 64 + "TeleWifiCall.triggerNetworkSwitch, connectedToInternet : " + bool1 + ", " + (String)localObject, new Object[0]);
    if (bool1)
    {
      int i2 = ((TelephonyManager)a.getSystemService("phone")).getNetworkType();
      localObject = euh.a(a);
      int i1;
      if ((a) && (aal.a(a, c.h(), (eum)localObject, i2))) {
        if (c.v())
        {
          ezi.c("Babel_telephony", "TeleWifiCall.triggerWifiSwitch, falling back to wifi", new Object[0]);
          c.b(false);
          b();
          aal.c(2903);
          i1 = 1;
        }
      }
      while (i1 != 0)
      {
        return true;
        b();
        i1 = 1;
        continue;
        i1 = 0;
      }
      if (!a)
      {
        localObject = a;
        i1 = c.h().c();
        boolean bool2 = c.g();
        if (((i2 == 13) && (aal.a((Context)localObject, i1, bool2))) || ((aal.l(i2)) && (aal.b((Context)localObject, i1, bool2))))
        {
          i1 = 1;
          if ((i1 == 0) || (localerc == null) || (localerc.a())) {
            break label406;
          }
          if (c.v()) {
            break label397;
          }
          ezi.c("Babel_telephony", "TeleWifiCall.onWifiStateChanged, falling back to Data", new Object[0]);
          c.b(true);
          b();
          aal.c(2902);
          i1 = 1;
        }
      }
      for (;;)
      {
        if (i1 == 0) {
          break label411;
        }
        return true;
        i1 = 0;
        break;
        label397:
        b();
        i1 = 1;
        continue;
        label406:
        i1 = 0;
      }
    }
    label411:
    if ((paramBoolean) || (!bool1))
    {
      if ((localerc != null) && (!localerc.a()) && (eru.a(a, c.j(), false, 3, c.u())))
      {
        ezi.c("Babel_telephony", "TeleWifiCall.triggerNetworkSwitch, handing off to circuit switched", new Object[0]);
        e(3);
        return true;
      }
      ezi.c("Babel_telephony", "TeleWifiCall.triggerNetworkSwitch, cannot handoff to ciruit switched", new Object[0]);
    }
    if (paramBoolean)
    {
      ezi.c("Babel_telephony", "TeleWifiCall.triggerNetworkSwitch, calling exitHangout", new Object[0]);
      f(1003);
      return true;
    }
    return false;
  }
  
  public int d()
  {
    return 2;
  }
  
  DisconnectCause d(int paramInt)
  {
    int i2 = 27;
    int i3 = aal.j(paramInt);
    Object localObject = a;
    String str;
    int i1;
    switch (paramInt)
    {
    default: 
      localObject = null;
      str = aal.i(paramInt);
      if ((paramInt == 1003) || (paramInt == 1018)) {
        i1 = 95;
      }
      break;
    }
    for (;;)
    {
      return new DisconnectCause(i3, (CharSequence)localObject, null, str, i1);
      localObject = ((Context)localObject).getString(aal.qT);
      break;
      localObject = ((Context)localObject).getString(aal.qW);
      break;
      localObject = ((Context)localObject).getString(aal.qU);
      break;
      localObject = ((Context)localObject).getString(aal.qV);
      break;
      localObject = ((Context)localObject).getString(aal.qR);
      break;
      localObject = ((Context)localObject).getString(aal.qQ);
      break;
      localObject = ((Context)localObject).getString(aal.qS);
      break;
      localObject = ((Context)localObject).getString(aal.qZ);
      break;
      i1 = i2;
      if (paramInt != 1012)
      {
        i1 = i2;
        switch (aal.j(paramInt))
        {
        case 2: 
        case 3: 
        case 4: 
        case 5: 
        case 6: 
        default: 
          i1 = -1;
          break;
        case 7: 
          i1 = 17;
        }
      }
    }
  }
  
  public String e()
  {
    return g;
  }
  
  public void f()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 29 + "TeleWifiCall.onStopDtmfTone, " + str, new Object[0]);
  }
  
  public void g()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 27 + "TeleWifiCall.onDisconnect, " + str, new Object[0]);
    f(1004);
  }
  
  public void h()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 25 + "TeleWifiCall.onSeparate, " + str, new Object[0]);
  }
  
  public void i()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 22 + "TeleWifiCall.onAbort, " + str, new Object[0]);
    g();
  }
  
  public void j()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 21 + "TeleWifiCall.onHold, " + str, new Object[0]);
    if (c.getState() != 5)
    {
      c.setOnHold();
      d(true);
    }
  }
  
  public void k()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 23 + "TeleWifiCall.onUnhold, " + str, new Object[0]);
    if (c.getState() != 4)
    {
      c.setActive();
      d(false);
    }
  }
  
  public void l()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 23 + "TeleWifiCall.onAnswer, " + str, new Object[0]);
    if (m != null)
    {
      m.a();
      m = null;
    }
  }
  
  public void m()
  {
    String str = String.valueOf(c);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 23 + "TeleWifiCall.onReject, " + str, new Object[0]);
    if (m != null)
    {
      m.b();
      m = null;
    }
    a(new DisconnectCause(6, "incoming request ignored"));
  }
  
  public cgw n()
  {
    return d;
  }
  
  void o()
  {
    d(false);
  }
  
  public String p()
  {
    if ((d != null) && (d.q() != null)) {
      return d.q().h();
    }
    return null;
  }
  
  void q()
  {
    ezi.c("Babel_telephony", "TeleWifiCall.requestOutOfBandHandoffNumber", new Object[0]);
    Object localObject1 = c;
    Object localObject2 = ((erg)localObject1).s();
    if ((localObject2 != null) && (((ero)localObject2).a("nwc")) && (((ero)localObject2).b("no_handoff"))) {
      ezi.c("Babel_telephony", "TeleUtils.getFromNumberForNewCall, not setting from number for experiment.", new Object[0]);
    }
    for (localObject1 = null;; localObject1 = aal.o(((erg)localObject1).d()))
    {
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        localObject2 = (eat)ilh.a(a, eat.class);
        if (i == null)
        {
          i = new euc(this);
          ((eat)localObject2).a(i);
        }
        localObject2 = dvd.e(c.o());
        j = ((bcm)ilh.a(a, bcm.class)).a(new eqq((bfd)localObject2, c.p(), c.r(), (String)localObject1)).a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     eua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */