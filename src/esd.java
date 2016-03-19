import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.telecom.TelecomManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.Locale;

public final class esd
{
  private final Context a;
  private final esf b;
  private final TelecomManager c;
  private final boolean d;
  private esg e;
  private eaw f;
  private boolean g;
  private boolean h;
  private boolean i;
  
  public esd(Context paramContext, esf paramesf, TelecomManager paramTelecomManager, esg paramesg, boolean paramBoolean)
  {
    a = paramContext.getApplicationContext();
    b = paramesf;
    c = paramTelecomManager;
    e = paramesg;
    d = paramBoolean;
  }
  
  private void a(int paramInt1, boolean paramBoolean, int paramInt2)
  {
    hax localhax = ((hba)ilh.a(a, hba.class)).a(e.f).a(paramInt1).c();
    if (paramBoolean) {
      localhax.a(Integer.valueOf(paramInt2));
    }
    localhax.d();
  }
  
  private void b()
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.addNewIncomingCall", new Object[0]);
    if (c.getDefaultOutgoingPhoneAccount("tel") != null) {}
    try
    {
      c.addNewIncomingCall(c.getDefaultOutgoingPhoneAccount("tel"), e.a());
      h = true;
      if (!h)
      {
        c.addNewIncomingCall(aal.m(a), e.a());
        h = true;
      }
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        String str1 = String.valueOf("TeleIncomingWifiCallInvite.addNewIncomingCall, adding call with SIM account failed, trying non-SIM account, exception: ");
        String str2 = String.valueOf(localException);
        ezi.c("Babel_telephony", String.valueOf(str1).length() + 0 + String.valueOf(str2).length() + str1 + str2, new Object[0]);
      }
    }
  }
  
  private boolean b(ess paramess)
  {
    boolean bool1 = true;
    hbs.b("Expected non-null", a);
    hbs.b("Expected non-null", b);
    hbs.b("Expected non-null", c);
    Object localObject1 = aal.a(a);
    if (!((bdp)localObject1).a("babel_incoming_wifi_calls_allowed", true))
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, not allowed by gservices", new Object[0]);
      bool1 = false;
    }
    int j;
    do
    {
      do
      {
        return bool1;
        if (!eut.a(a).c())
        {
          ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, wifi calling not enabled", new Object[0]);
          return false;
        }
        if (!aal.n(a))
        {
          ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, not connection manager", new Object[0]);
          return false;
        }
        if ((ezm.c()) && (a != null) && (!a.a())) {}
        for (j = 1; (j != 0) && (TextUtils.isEmpty(e.b)) && (!((bdp)localObject1).a("babel_blocked_incoming_wifi_calls_allowed", true)); j = 0)
        {
          ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, incoming wifi calls from blocked numbers not allowed", new Object[0]);
          return false;
        }
        if (!d) {
          break;
        }
        ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, falling back to Wi-Fi, only checking for Wi-Fi connection", new Object[0]);
      } while (b.a);
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, not connected to wifi", new Object[0]);
      return false;
      if (!cfc.a().m()) {
        break;
      }
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, hangout already exists, only checking for Wi-Fi connection, answering incoming ring will exit hangout", new Object[0]);
    } while (b.a);
    ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, not connected to wifi", new Object[0]);
    return false;
    if (e.e != null)
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, in Wi-Fi calling experiment", new Object[0]);
      return true;
    }
    Object localObject2 = a;
    localObject1 = c;
    Object localObject3 = a;
    if (b.a)
    {
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncomingLteCall, connected to wifi", new Object[0]);
      j = 0;
      if (j == 0)
      {
        localObject2 = a;
        localObject1 = c;
        localObject3 = a;
        if (!b.a) {
          break label654;
        }
        ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncoming3GCall, connected to wifi", new Object[0]);
        j = 0;
      }
    }
    for (;;)
    {
      if (j == 0) {
        break label796;
      }
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, falling back to cellular data", new Object[0]);
      e = new esg(e.a, e.b, e.c, e.d, e.e, e.f, true, c);
      return true;
      if (e != 13)
      {
        ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncomingLteCall, not connected to LTE", new Object[0]);
        j = 0;
        break;
      }
      if (!aal.k((Context)localObject2))
      {
        ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncomingLteCall, not connected to internet", new Object[0]);
        j = 0;
        break;
      }
      if (aal.a((Context)localObject2, (est)localObject1))
      {
        ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncomingLteCall, allowing possible emergency callback over LTE", new Object[0]);
        j = 1;
        break;
      }
      if (aal.a((Context)localObject2, "babel_lte_incoming_call_allowed", false))
      {
        ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncomingLteCall, any incoming call over LTE allowed by config", new Object[0]);
        j = 1;
        break;
      }
      if (aal.a((Context)localObject2, ((est)localObject1).c(), true))
      {
        localObject2 = String.valueOf("TeleWifiCallThreshold.shouldAllowIncomingLteCall,on carrier where we support voip calling over LTE, carrierId: ");
        j = ((est)localObject1).c();
        ezi.c("Babel_telephony", String.valueOf(localObject2).length() + 11 + (String)localObject2 + j, new Object[0]);
        j = 1;
        break;
      }
      ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncomingLteCall, returning false", new Object[0]);
      j = 0;
      break;
      label654:
      if (!aal.l(e))
      {
        ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncoming3GCall, not connected to 3G", new Object[0]);
        j = 0;
      }
      else if (!aal.k((Context)localObject2))
      {
        ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncoming3GCall, not connected to internet", new Object[0]);
        j = 0;
      }
      else if (aal.b((Context)localObject2, ((est)localObject1).c(), true))
      {
        localObject2 = String.valueOf("TeleWifiCallThreshold.shouldAllowIncoming3GCall,on carrier where we support voip calling over 3G, carrierId: ");
        j = ((est)localObject1).c();
        ezi.c("Babel_telephony", String.valueOf(localObject2).length() + 11 + (String)localObject2 + j, new Object[0]);
        j = 1;
      }
      else
      {
        ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncoming3GCall, returning false", new Object[0]);
        j = 0;
      }
    }
    label796:
    if (aal.a(a, c, a, b, null))
    {
      if (d)
      {
        ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldCheckExtraNetworkAttributes, not checking, falling back to Wi-Fi", new Object[0]);
        j = 0;
      }
      while (j == 0)
      {
        ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, not checking extra network attributes.", new Object[0]);
        return true;
        if ((b.a) && (a != null) && (a.a()))
        {
          ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldCheckExtraNetworkAttributes, not checking, no cell service", new Object[0]);
          j = 0;
        }
        else if ((!b.a) && (aal.a(a, c)))
        {
          ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldCheckExtraNetworkAttributes, not checking, potential emergency callback over LTE", new Object[0]);
          j = 0;
        }
        else
        {
          j = 1;
        }
      }
      if (b.a)
      {
        localObject1 = "wifi";
        localObject3 = String.format(Locale.US, "_network_type_%s", new Object[] { localObject1 });
        localObject2 = a;
        localObject1 = String.valueOf("babel_stun_ping_latency_millis");
        localObject3 = String.valueOf(localObject3);
        if (((String)localObject3).length() == 0) {
          break label1214;
        }
      }
      label1214:
      for (localObject1 = ((String)localObject1).concat((String)localObject3);; localObject1 = new String((String)localObject1))
      {
        long l = aal.a((Context)localObject2, (String)localObject1, 100L);
        j = e.f;
        bool1 = dvp.N.b(j);
        if ((!g) && (e) && (f <= l)) {
          break label1249;
        }
        if (!bool1) {
          break label1228;
        }
        localObject1 = String.valueOf("TeleIncomingWifiCallInvite.hasAcceptableStunPingLatency, not acceptable, didTimeout: ");
        bool1 = g;
        bool2 = e;
        l = f;
        ezi.c("Babel_telephony", String.valueOf(localObject1).length() + 73 + (String)localObject1 + bool1 + ", wasStunPingSuccessful: " + bool2 + ", latency millis: " + l, new Object[0]);
        a(2897, e, (int)f);
        j = 0;
        if (j != 0) {
          break label1291;
        }
        ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, poor stun latency on Wi-Fi", new Object[0]);
        return false;
        localObject1 = aal.k(a.e);
        break;
      }
      label1228:
      a(2899, e, (int)f);
      for (;;)
      {
        j = 1;
        break;
        label1249:
        if (bool1) {
          a(2898, e, (int)f);
        } else {
          a(2900, e, (int)f);
        }
      }
      label1291:
      boolean bool2 = aal.a(a, c, d, a);
      if (e.f == -1)
      {
        bool1 = false;
        if (!bool1) {
          break label1408;
        }
        if (!bool2) {
          break label1382;
        }
        a(2893, false, -1);
      }
      for (;;)
      {
        for (j = 1;; j = 0)
        {
          if (j != 0) {
            break label1437;
          }
          ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, poor herrevad score for Wi-Fi", new Object[0]);
          return false;
          j = e.f;
          bool1 = dvp.K.b(j);
          break;
          label1382:
          a(2895, false, -1);
          ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.hasAcceptableHerrevadScore, using cell due to bad herrevad network quality score for the wifi network", new Object[0]);
        }
        label1408:
        if (bool2) {
          a(2894, false, -1);
        } else {
          a(2896, false, -1);
        }
      }
      label1437:
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, Wi-Fi signal is good", new Object[0]);
      return true;
    }
    ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldAllowRing, returning false", new Object[0]);
    return false;
  }
  
  private void c()
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.cleanupInvite", new Object[0]);
    g = false;
    if ((!h) && (!i)) {
      aal.a(a, e.f, e.b, 2337);
    }
    b.a(this);
    if (f != null) {
      f.d();
    }
  }
  
  public void a(eaw parameaw)
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.startProcessing", new Object[0]);
    hbs.a("Expected condition to be true", a());
    if ((parameaw != null) || (d)) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.a("Expected condition to be true", bool);
      g = true;
      if (parameaw != null)
      {
        f = parameaw;
        parameaw.h();
      }
      if (aal.q(a)) {
        break;
      }
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.startProcessing, no permissions.", new Object[0]);
      c();
      return;
    }
    if (d)
    {
      if (b(new ess(era.a(a, 0, -1), euh.a(a), e.h, null, false, 0L, false)))
      {
        ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.startProcessing, falling back to Wi-Fi", new Object[0]);
        aal.a(a, e);
        b();
      }
      for (;;)
      {
        c();
        return;
        ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.startProcessing, not falling back to Wi-Fi", new Object[0]);
      }
    }
    new esq(a, new ese(this)).a();
  }
  
  public void a(ess paramess)
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.processInviteWithState", new Object[0]);
    if (!g)
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.processInviteWithState, invite cancelled", new Object[0]);
      return;
    }
    e = new esg(e.a, e.b, e.c, e.d, e.e, e.f, e.g, c);
    aal.a(a, e);
    if (b(paramess)) {
      b();
    }
    while (d)
    {
      c();
      return;
    }
    paramess = a;
    Object localObject = e;
    int j;
    if (((TelephonyManager)paramess.getSystemService("phone")).getPhoneType() == 2)
    {
      j = aal.a(paramess, "babel_fallback_to_wifi_timeout_cdma_millis", 5000);
      label170:
      if (j >= 0) {
        break label210;
      }
      ezi.c("Babel_telephony", "TeleIncomingWifiCallFallback.scheduleAlarm, fallback disabled", new Object[0]);
    }
    for (boolean bool = false;; bool = true)
    {
      i = bool;
      break;
      j = aal.a(paramess, "babel_fallback_to_wifi_timeout_gsm_millis", 5000);
      break label170;
      label210:
      localObject = PendingIntent.getBroadcast(paramess, 0, new Intent("com.google.android.apps.hangouts.telephony.TeleIncomingWifiCallFallback.ALARM").putExtra("invite_info", ((esg)localObject).a()), 1073741824);
      ezi.c("Babel_telephony", 80 + "TeleIncomingWifiCallFallback.scheduleAlarm, scheduling for (millis): " + j, new Object[0]);
      ((AlarmManager)paramess.getSystemService("alarm")).setExact(2, SystemClock.elapsedRealtime() + j, (PendingIntent)localObject);
    }
  }
  
  boolean a()
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldProcess", new Object[0]);
    eut localeut = eut.a(a);
    int j;
    if (e.f == localeut.f())
    {
      j = 1;
      if (j == 0) {
        break label59;
      }
      ezi.c("Babel_telephony", "TeleIncomingWifiCallInvite.shouldProcess, processing invite for Tycho  account", new Object[0]);
    }
    label59:
    do
    {
      return true;
      j = 0;
      break;
      j = localeut.b();
    } while (e.f == j);
    ezi.c("Babel_telephony", String.format("TeleIncomingWifiCallInvite.shouldProcess, selected account id: %d doesn't match incoming account: %s, id: %d", new Object[] { Integer.valueOf(j), ezi.b(dvd.a(a, e.f)), Integer.valueOf(e.f) }), new Object[0]);
    return false;
  }
  
  boolean a(cgs paramcgs)
  {
    if (e.a.equals(paramcgs))
    {
      c();
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     esd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */