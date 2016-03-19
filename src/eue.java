import android.content.Context;
import android.os.Handler;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.telecom.ConnectionRequest;
import android.telecom.DisconnectCause;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;

class eue
{
  final Context a;
  final esj b;
  final erl c;
  final erg d;
  final esg e;
  final long f = System.currentTimeMillis();
  final Handler g = new Handler();
  eua h;
  hku i;
  PowerManager.WakeLock j;
  
  eue(Context paramContext, esj paramesj, TeleConnectionService paramTeleConnectionService, ConnectionRequest paramConnectionRequest, erl paramerl, PowerManager.WakeLock paramWakeLock)
  {
    a = paramContext;
    b = paramesj;
    c = paramerl;
    j = paramWakeLock;
    if (paramWakeLock != null) {
      paramWakeLock.acquire();
    }
    e = esg.a(paramConnectionRequest.getExtras());
    d = new erg(new esw(paramTeleConnectionService, new ConnectionRequest(paramConnectionRequest.getAccountHandle(), aal.r(e.b), paramConnectionRequest.getExtras()), new est(paramTeleConnectionService, etj.a(paramTeleConnectionService)), true));
    d.c();
    d.a(e.e);
    d.b(e.g);
  }
  
  public void a()
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallRequest.onAnswer", new Object[0]);
    if ((h.n() == null) && (cfc.a().m()))
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallRequest.onAnswer, exiting existing hangout", new Object[0]);
      hbs.a("Expected null", i);
      i = new esh(this);
      cfc.a().a(i);
      cfc.a().r().b(1006);
      return;
    }
    d();
  }
  
  void a(int paramInt)
  {
    Object localObject = String.valueOf("TeleIncomingWifiCallRequest.sendIncomingHangoutInviteResponse, HangoutInvitationAck.UserAction: ");
    ezi.c("Babel_telephony", String.valueOf(localObject).length() + 11 + (String)localObject + paramInt, new Object[0]);
    localObject = new kkp();
    a = Long.valueOf(e.c);
    b = e.a.g();
    c = Long.valueOf(f * 1000L);
    d = Long.valueOf(System.currentTimeMillis() - f);
    f = Integer.valueOf(paramInt);
    RealTimeChatService.a(dvd.e(e.f), (kkp)localObject);
  }
  
  boolean a(cgs paramcgs, int paramInt)
  {
    if (e.a.equals(paramcgs))
    {
      if (h != null) {
        h.b(paramInt);
      }
      f();
      return true;
    }
    return false;
  }
  
  public void b()
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallRequest.onReject", new Object[0]);
    a(2);
    if (h.n() != null) {
      h.n().b(1011);
    }
    f();
  }
  
  erg c()
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallRequest.startRequest", new Object[0]);
    boolean bool = aal.a(a, e.f, e.a);
    if ((c != null) && (c.a(d.e(), true)))
    {
      ezi.c("Babel_telephony", "TeleIncomingWifiCallRequest.startRequest, call is duplicate", new Object[0]);
      d.setDisconnected(new DisconnectCause(4));
      aal.a(a, e.f, e.b, 2337);
      f();
    }
    for (;;)
    {
      return d;
      if (!bool)
      {
        ezi.c("Babel_telephony", "TeleIncomingWifiCallRequest.startRequest, pending invite was cancelled", new Object[0]);
        d.setDisconnected(new DisconnectCause(5));
        aal.a(a, e.f, e.b, 2336);
        f();
      }
      else
      {
        h = new eua(a, this, null, true);
        d.a(h);
        d.setRinging();
        d.b(e.a.a());
        d.a(e.f);
        if (!cfc.a().m()) {
          e();
        }
        aal.a(a, d);
        aal.a(a, e.f, e.b, 2336);
      }
    }
  }
  
  void d()
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallRequest.performAnswer, answering call", new Object[0]);
    a(1);
    if (h.n() == null) {
      e();
    }
    cfc.a().u();
    d.setActive();
    d.w();
    f();
  }
  
  void e()
  {
    cyx localcyx = aal.a(d.f().f(), aal.p(), false, null, null, 0);
    cfc.a().a(e.a, false, null, true, localcyx, 86, 1, false, SystemClock.elapsedRealtime(), null, d.i());
    h.a(cfc.a().r());
  }
  
  void f()
  {
    ezi.c("Babel_telephony", "TeleIncomingWifiCallRequest.cleanupRequest", new Object[0]);
    if (i != null)
    {
      cfc.a().b(i);
      i = null;
    }
    g.removeCallbacksAndMessages(null);
    h = null;
    b.a(this);
    if (j != null)
    {
      j.release();
      j = null;
    }
  }
}

/* Location:
 * Qualified Name:     eue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */