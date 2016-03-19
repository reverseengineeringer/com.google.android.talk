import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;
import com.google.android.apps.hangouts.telephony.ui.TeleSetupActivity;
import java.util.Locale;

public final class etk
  implements ebb, etb, evg, evq, evz, ewg, ewn, ewq, hpw
{
  private String A;
  private ess B;
  final Context a;
  final erg b;
  final Handler c = aal.y();
  final Runnable d = new etl(this);
  public evu e;
  public evr f;
  boolean g;
  private final eto h;
  private final ewj i;
  private final int j;
  private imi k;
  private hzy l;
  private int m = 1;
  private av n;
  private String o;
  private boolean p;
  private boolean q;
  private boolean r;
  private bfd s;
  private String t;
  private esz u;
  private evf v;
  private evd w;
  private ero x;
  private boolean y;
  private final eqm z;
  
  etk(Context paramContext, erg paramerg, eto parameto, eqm parameqm)
  {
    hbs.b("Expected non-null", paramerg);
    a = paramContext;
    b = paramerg;
    h = parameto;
    i = null;
    j = 1;
    z = parameqm;
  }
  
  public etk(Context paramContext, ewj paramewj, boolean paramBoolean)
  {
    a = paramContext;
    b = null;
    h = null;
    i = paramewj;
    if (paramBoolean) {}
    for (int i1 = 3;; i1 = 2)
    {
      j = i1;
      z = null;
      return;
    }
  }
  
  private void a(av paramav, String paramString)
  {
    if (k == null)
    {
      n = paramav;
      o = paramString;
      n();
      return;
    }
    n = null;
    o = null;
    Object localObject = k.C_();
    av localav = ((bg)localObject).a(16908290);
    if ((localav != null) && (paramString.equals(localav.getTag())))
    {
      paramav = String.valueOf(paramString);
      if (paramav.length() != 0) {}
      for (paramav = "TeleSetupController.showFragment, already displaying fragment: ".concat(paramav);; paramav = new String("TeleSetupController.showFragment, already displaying fragment: "))
      {
        ezi.c("Babel_telephony", paramav, new Object[0]);
        return;
      }
    }
    String str = String.valueOf(paramav);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 51 + String.valueOf(paramString).length() + "TeleSetupController.showFragment, fragment: " + str + ", tag: " + paramString, new Object[0]);
    localObject = ((bg)localObject).a();
    if (localav != null) {
      ((bz)localObject).a(17432576, 17432577);
    }
    ((bz)localObject).b(16908290, paramav, paramString);
    ((bz)localObject).b();
  }
  
  private boolean a(esw paramesw)
  {
    hbs.a("Expected condition to be true", paramesw.b().a(a));
    return !Locale.US.getCountry().equals(ezm.a(paramesw.d()));
  }
  
  private boolean b(ess paramess)
  {
    String str1;
    label70:
    long l1;
    int i1;
    boolean bool1;
    if (b.a)
    {
      str1 = "wifi";
      String str2 = String.format(Locale.US, "_network_type_%s", new Object[] { str1 });
      Context localContext = a;
      str1 = String.valueOf("babel_stun_ping_latency_millis");
      str2 = String.valueOf(str2);
      if (str2.length() == 0) {
        break label253;
      }
      str1 = str1.concat(str2);
      l1 = aal.a(localContext, str1, 100L);
      i1 = eut.a(a).b();
      bool1 = dvp.N.b(i1);
      if (!e) {
        break label267;
      }
      i1 = (int)f;
    }
    for (;;)
    {
      if ((g) || (!e) || (f > l1))
      {
        if (bool1)
        {
          str1 = String.valueOf("TeleSetupController.hasAcceptableStunPingLatency, not acceptable, didTimeout: ");
          bool1 = g;
          boolean bool2 = e;
          l1 = f;
          ezi.c("Babel_telephony", String.valueOf(str1).length() + 73 + str1 + bool1 + ", wasStunPingSuccessful: " + bool2 + ", latency millis: " + l1, new Object[0]);
          a(2897, i1);
          return false;
          str1 = aal.k(a.e);
          break;
          label253:
          str1 = new String(str1);
          break label70;
          label267:
          i1 = -1;
          continue;
        }
        a(2899, i1);
        return true;
      }
    }
    if (bool1)
    {
      a(2898, i1);
      return true;
    }
    a(2900, i1);
    return true;
  }
  
  private static String c(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return 25 + "STEP_UNKNOWN: " + paramInt;
    case 1: 
      return "STEP_START";
    case 2: 
      return "STEP_CHOOSE_ACCOUNT";
    case 3: 
      return "STEP_SETUP_ACCOUNT";
    case 4: 
      return "STEP_UPDATE_GOOGLE_VOICE_STATUS";
    case 5: 
      return "STEP_GOOGLE_VOICE_TOS";
    case 7: 
      return "STEP_GET_PROXY_NUMBER";
    case 8: 
      return "STEP_END";
    }
    return "STEP_CREATE_HANGOUT_ID";
  }
  
  private void d(int paramInt)
  {
    ezi.c("Babel_telephony", 62 + "TeleSetupController.finishSetupWithResult, result: " + paramInt, new Object[0]);
    int i1;
    if (!p)
    {
      p = true;
      i1 = paramInt;
      if (paramInt == 2)
      {
        i1 = paramInt;
        if (!aal.s(a))
        {
          ezi.c("Babel_telephony", "TeleSetupController.finishSetupWithResult, can't make cell calls, cancelling", new Object[0]);
          i1 = 3;
        }
      }
      switch (j)
      {
      default: 
        paramInt = j;
        hbs.a(33 + "Unknown start reason: " + paramInt);
      }
    }
    for (;;)
    {
      g = true;
      if (k != null)
      {
        k.finish();
        k = null;
      }
      if (v != null)
      {
        v.c();
        v = null;
      }
      if (w != null)
      {
        w.c();
        w = null;
      }
      if (e != null)
      {
        e.d();
        e = null;
      }
      if (f != null)
      {
        f.e();
        f = null;
      }
      if (u != null)
      {
        u.e();
        u = null;
      }
      ((erm)ilh.a(a, erm.class)).b(this);
      n = null;
      o = null;
      c.removeCallbacks(d);
      return;
      if (i1 == 3)
      {
        b.x();
        h.b();
      }
      else if (i1 == 1)
      {
        hbs.b("Expected non-null", s);
        hbs.a(Integer.valueOf(b.f().a()), Integer.valueOf(2));
        b.a(x);
        h.a(s, A);
      }
      else
      {
        hbs.a(Integer.valueOf(b.f().a()), Integer.valueOf(1));
        b.x();
        h.a();
        continue;
        i.a();
      }
    }
  }
  
  private void e(int paramInt)
  {
    Object localObject = null;
    if (k != null) {
      localObject = (ewa)k.C_().a("progress");
    }
    if (localObject == null)
    {
      localObject = a.getString(aal.qE);
      String str = a.getString(paramInt);
      ewa localewa = new ewa();
      localewa.setArguments(new Bundle());
      localewa.a((String)localObject);
      localewa.b(str);
      a(localewa, "progress");
      return;
    }
    ((ewa)localObject).b(a.getString(paramInt));
  }
  
  private void n()
  {
    if (!p) {}
    Object localObject;
    for (boolean bool = true;; bool = false)
    {
      aen.b(bool, "Create UI after callback invoked.");
      if (q) {
        break label193;
      }
      q = true;
      localObject = a;
      hbs.b("Expected non-null", this);
      localObject = new Intent((Context)localObject, TeleSetupActivity.class);
      ((Intent)localObject).putExtra("controller", new eym(this));
      if (d()) {
        ((Intent)localObject).addFlags(1342210048);
      }
      if (!d()) {
        break label184;
      }
      w = new evd(a, this, (Intent)localObject);
      evc localevc = b.d().a();
      if (localevc.a(this)) {
        v = localevc.a((Intent)localObject, w);
      }
      if (v != null) {
        break;
      }
      ezi.e("Babel_telephony", "TeleSetupController.createSetupActivity, unable to show dialog on top of in-call UI", new Object[0]);
      w.a();
      return;
    }
    ezi.c("Babel_telephony", "TeleSetupController.createSetupActivity, wifi call waiting for dialog", new Object[0]);
    return;
    label184:
    a.startActivity((Intent)localObject);
    return;
    label193:
    ezi.c("Babel_telephony", "TeleSetupController.createSetupActivity, creation already in progress.", new Object[0]);
  }
  
  private void o()
  {
    String str2 = aal.a(a, "babel_user_to_allow_wifi_calling_for", "tycho_users");
    String str1 = String.valueOf(aal.b(s));
    if (str1.length() != 0) {}
    for (str1 = "TeleSetupController.chooseWifiOrCellular, selectedAccount: ".concat(str1);; str1 = new String("TeleSetupController.chooseWifiOrCellular, selectedAccount: "))
    {
      ezi.c("Babel_telephony", str1, new Object[0]);
      if (s != null) {
        break label157;
      }
      if (!"hangouts_testing_users".equals(str2)) {
        break;
      }
      a(new evm(), "account_chooser");
      return;
    }
    int i1 = j;
    str1 = 36 + "Unexpected start reason: " + i1;
    if (j == 3) {}
    for (boolean bool = true;; bool = false)
    {
      hbs.b(str1, bool);
      a(false);
      d(2);
      return;
    }
    label157:
    m();
  }
  
  private void p()
  {
    eut localeut = eut.a(a);
    int i1 = localeut.b();
    if (i1 == -1)
    {
      t = eut.a(a).i();
      str = String.valueOf(t);
      if (str.length() == 0) {
        break label91;
      }
    }
    label91:
    for (String str = "TeleSetupController.setSelectedAccount accountName:".concat(str);; str = new String("TeleSetupController.setSelectedAccount accountName:"))
    {
      ezi.c("Babel_telephony", str, new Object[0]);
      if (i1 != -1)
      {
        s = dvd.e(i1);
        if (s == null) {
          localeut.a(-1);
        }
      }
      return;
    }
  }
  
  private void q()
  {
    ezi.c("Babel_telephony", "TeleSetupController.loginToAccount", new Object[0]);
    e(aal.qF);
    int i1 = aal.a(a, "babel_wifi_call_account_setup_timeout", 20000);
    c.postDelayed(d, i1);
    ((erm)ilh.a(a, erm.class)).a(this);
    l.a("active-hangouts-account").b(this);
    if (s != null)
    {
      ezi.c("Babel_telephony", "TeleSetupController.loginToAccount using accountId", new Object[0]);
      l.a(new iaj().a().a(s.g()));
      return;
    }
    ezi.c("Babel_telephony", "TeleSetupController.loginToAccount using accountName", new Object[0]);
    l.a(new iaj().a().a(t));
  }
  
  private void r()
  {
    if (d())
    {
      Object localObject = b.f();
      if (((esw)localObject).p())
      {
        int i1 = s.g();
        String str1 = ((esw)localObject).d();
        String str2 = ezm.f();
        if ((str1 != null) && (str2 != null))
        {
          localObject = a;
          ezi.c("Babel_telephony", "TeleTychoController.getProxyNumber", new Object[0]);
          if (aal.a((Context)localObject, "babel_telephony_use_proxy_numbers_from_tycho", true))
          {
            aal.a((Context)localObject, new eux((Context)localObject, str1, this));
            return;
          }
          a(1);
          return;
        }
        ezi.e("Babel_telephony", String.format("TeleSetupController.performGetProxyNumber, invalid input, accountId: %d, destination number: %s, from number: %s", new Object[] { Integer.valueOf(i1), aal.s(str1), aal.s(str2) }), new Object[0]);
        if (a((esw)localObject))
        {
          localObject = String.valueOf("TeleSetupController.performGetProxyNumber, blocking possible non-free call to avoid paying roaming rates. ");
          str1 = String.valueOf(aal.s(str1));
          if (str1.length() != 0) {}
          for (str1 = ((String)localObject).concat(str1);; str1 = new String((String)localObject))
          {
            ezi.c("Babel_telephony", str1, new Object[0]);
            d(3);
            return;
          }
        }
        m();
        return;
      }
    }
    m();
  }
  
  private void s()
  {
    int i2 = 1;
    int i1 = 1;
    hbs.b("Expected condition to be false", p);
    Object localObject;
    switch (m)
    {
    default: 
      i1 = m;
      hbs.a(25 + "unknown step: " + i1);
      a(false);
      d(2);
      return;
    case 1: 
      i1 = j;
      ezi.c("Babel_telephony", 62 + "TeleSetupController.performStartStep, startReason: " + i1, new Object[0]);
      switch (j)
      {
      default: 
        i1 = j;
        hbs.a(33 + "unknown start reason: " + i1);
        b(aal.qJ);
        return;
      case 1: 
        hbs.a("Expected condition to be true", d());
        new esq(a, new etm(this)).a();
        return;
      case 2: 
        m();
        return;
      }
      a(new evm(), "account_chooser");
      return;
    case 2: 
      p();
      m();
      return;
    case 3: 
      if ((s != null) && (dvd.h(s.g()))) {}
      for (boolean bool = true;; bool = false)
      {
        ezi.c("Babel_telephony", 55 + "TeleSetupController.performSetupAccount, isReady: " + bool, new Object[0]);
        if (!aal.k(a))
        {
          ezi.c("Babel_telephony", "TeleSetupController.performSetupAccount, not connected to internet", new Object[0]);
          bool = true;
        }
        if (!bool) {
          break;
        }
        o();
        return;
      }
      localObject = String.valueOf(s);
      String str = t;
      ezi.c("Babel_telephony", String.valueOf(localObject).length() + 65 + String.valueOf(str).length() + "TeleSetupController.setupOrLogin, selectedAccount:" + (String)localObject + " , accountName:" + str, new Object[0]);
      if ((s == null) && (TextUtils.isEmpty(t)))
      {
        o();
        return;
      }
      if (k == null)
      {
        y = true;
        n();
        return;
      }
      q();
      return;
    case 4: 
      if (s == null) {}
      for (i1 = 0;; i1 = s.N())
      {
        ezi.c("Babel_telephony", 71 + "TeleSetupController.performUpdateGoogleVoiceStatus, status: " + i1, new Object[0]);
        if ((i1 != 0) || ((d()) && (!r))) {
          break;
        }
        e(aal.qG);
        e = new evu(s.g(), new evw(this));
        e.a(a);
        return;
      }
      m();
      return;
    case 5: 
      if (s == null) {}
      for (i1 = 0;; i1 = s.N()) {
        switch (i1)
        {
        default: 
          i1 = s.N();
          hbs.a(41 + "Unknown voice calling status: " + i1);
          if (!d()) {
            break label836;
          }
          a(false);
          m();
          return;
        }
      }
      ezi.d("Babel_telephony", "TeleSetupController.performGoogleVoiceTos, status is UNKNOWN", new Object[0]);
      if (d())
      {
        a(false);
        m();
        return;
      }
      b(aal.qJ);
      return;
      ezi.c("Babel_telephony", "TeleSetupController.performGoogleVoiceTos, status is ALLOWED", new Object[0]);
      m();
      return;
      ezi.c("Babel_telephony", "TeleSetupController.performGoogleVoiceTos, status is NEED_TOS", new Object[0]);
      if (d())
      {
        a(false);
        m();
        return;
      }
      a(new ewk(), "tos");
      return;
      ezi.d("Babel_telephony", "TeleSetupController.performGoogleVoiceTos, status is BLOCKED", new Object[0]);
      if (d())
      {
        a(false);
        m();
        return;
      }
      b(aal.qK);
      return;
      b(aal.qJ);
      return;
    case 6: 
      if (!d()) {
        i1 = 0;
      }
      while (i1 != 0)
      {
        ezi.c("Babel_telephony", "TeleSetupController.performCreateHangoutId, Creating hangoutId...", new Object[0]);
        localObject = new etn(this);
        ((etn)localObject).b();
        new hiy(a).a(s.a(), (hjb)localObject);
        return;
        if (!r)
        {
          ezi.a("Babel_telephony", "TeleSetupController.shouldCreateHangoutId not using wifi for calls", new Object[0]);
          i1 = 0;
        }
        else if ((B == null) || (B.a == null) || (B.a.a()))
        {
          ezi.a("Babel_telephony", "TeleSetupController.shouldCreateHangoutId no cell service", new Object[0]);
          i1 = 0;
        }
        else if (ezm.j(b.f().f()))
        {
          ezi.a("Babel_telephony", "TeleSetupController.shouldCreateHangoutId emergency number", new Object[0]);
          i1 = 0;
        }
      }
      m();
      return;
    case 7: 
      label836:
      r();
      return;
    }
    if (r) {}
    for (i1 = i2;; i1 = 2)
    {
      d(i1);
      return;
    }
  }
  
  public void a()
  {
    if (g) {
      return;
    }
    ezi.c("Babel_telephony", "TeleSetupController.onGetProxyNumberFailed", new Object[0]);
    if (a(b.f()))
    {
      String str1 = String.valueOf("TeleSetupController.onGetProxyNumberFailed, blocking possible non-free call to avoid paying roaming rates. ");
      String str2 = String.valueOf(aal.s(b.f().d()));
      if (str2.length() != 0) {}
      for (str1 = str1.concat(str2);; str1 = new String(str1))
      {
        ezi.c("Babel_telephony", str1, new Object[0]);
        d(3);
        return;
      }
    }
    m();
  }
  
  public void a(int paramInt)
  {
    if (g) {
      return;
    }
    if (paramInt != 1)
    {
      ezi.c("Babel_telephony", "TeleSetupController.onGetProxyNumberFailed, with error code %d", new Object[] { Integer.valueOf(paramInt) });
      m();
      return;
    }
    ezi.c("Babel_telephony", "TeleSetupController.onGetProxyNumberFailed, getting proxy number from Tycho not supported, using hangouts", new Object[0]);
    if (!aal.k(a))
    {
      ezi.d("Babel_telephony", "TeleSetupController.onGetProxyNumberFailed, no internet connection", new Object[0]);
      b.a().a(new int[] { 205 });
      m();
      return;
    }
    u = new esz(s.g(), b.f().d(), ezm.f(), this, b.a());
    u.d();
  }
  
  void a(int paramInt1, int paramInt2)
  {
    if (s != null) {}
    for (int i1 = s.g();; i1 = eut.a(a).b())
    {
      hax localhax = ((hba)ilh.a(a, hba.class)).a(i1).a(paramInt1).c().e(b.i());
      if (paramInt2 >= 0) {
        localhax.a(Integer.valueOf(paramInt2));
      }
      localhax.d();
      return;
    }
  }
  
  public void a(bfd parambfd)
  {
    if (parambfd != null)
    {
      String str = String.valueOf(aal.b(parambfd));
      if (str.length() != 0) {}
      for (str = "TeleSetupController.onAccountChooserDone, account: ".concat(str);; str = new String("TeleSetupController.onAccountChooserDone, account: "))
      {
        ezi.c("Babel_telephony", str, new Object[0]);
        s = parambfd;
        if (dvd.h(s.g())) {
          break label91;
        }
        if (k != null) {
          break;
        }
        y = true;
        n();
        return;
      }
      q();
      return;
      label91:
      m();
      return;
    }
    ezi.d("Babel_telephony", "TeleSetupController.onAccountChooserDone, no account.", new Object[0]);
    b(aal.qJ);
  }
  
  void a(ess paramess)
  {
    B = paramess;
    boolean bool1 = eut.a(a).e();
    b.a(bool1);
    if (!aal.s(a)) {
      b.a(true);
    }
    ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible", new Object[0]);
    hbs.b("Expected non-null", b);
    hbs.b("Expected non-null", c);
    boolean bool2;
    int i1;
    if (a == null)
    {
      bool2 = g;
      ezi.c("Babel_telephony", 72 + "TeleSetupController.isWifiCallPossible, no cell state, didTimeout: " + bool2, new Object[0]);
      i1 = 0;
    }
    for (;;)
    {
      label121:
      if (i1 != 0) {
        break label1522;
      }
      a(false);
      m();
      return;
      if (!aal.q(a))
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, no permissions", new Object[0]);
        break;
      }
      if (!eut.a(a).c())
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, wifi calling not enabled", new Object[0]);
        break;
      }
      if ("no_users".equals(aal.a(a, "babel_user_to_allow_wifi_calling_for", "tycho_users")))
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, wifi calls disabled for all users by gservices", new Object[0]);
        break;
      }
      Object localObject1 = aal.a(a);
      if (!((bdp)localObject1).a("babel_outgoing_wifi_calls_allowed", true))
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, outgoing wifi calls disabled by gservices", new Object[0]);
        break;
      }
      if ((!eua.a(b.d())) && (cfc.a().m()))
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, another hangout is in progress", new Object[0]);
        break;
      }
      if (!b.f().l())
      {
        localObject1 = String.valueOf(aal.s(b.f().e()));
        if (((String)localObject1).length() != 0) {}
        for (localObject1 = "TeleSetupController.isWifiCallPossible, invalid phone number: ".concat((String)localObject1);; localObject1 = new String("TeleSetupController.isWifiCallPossible, invalid phone number: "))
        {
          ezi.c("Babel_telephony", (String)localObject1, new Object[0]);
          break;
        }
      }
      if ((b.f().m()) && (!((bdp)localObject1).a("babel_wifi_call_google_voice_app_integration_enabled", false)))
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, Google Voice app integration disabled by gservices", new Object[0]);
        break;
      }
      if ((c.b(a)) && (!((bdp)localObject1).a("babel_international_wifi_call_allowed", true)))
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, wifi calling while international not allowed", new Object[0]);
        break;
      }
      if ((c.a(a)) && (c.a() == 2) && (!((bdp)localObject1).a("babel_roaming_wifi_call_allowed", true)))
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, wifi calling while roaming not allowed", new Object[0]);
        break;
      }
      if ((b.f().n()) && (!((bdp)localObject1).a("babel_voicemail_wifi_call_allowed", true)))
      {
        ezi.a("Babel_telephony", "TeleSetupController.isWifiCallPossible, calling voicemail not allowed", new Object[0]);
        break;
      }
      Object localObject2 = b.f().c();
      if ((c.b(a)) && (ezm.j((String)localObject2)))
      {
        localObject1 = String.valueOf("TeleSetupController.isWifiCallPossible, emergency number cannot be on wifi when outside the US : ");
        localObject2 = String.valueOf(localObject2);
        if (((String)localObject2).length() != 0) {}
        for (localObject1 = ((String)localObject1).concat((String)localObject2);; localObject1 = new String((String)localObject1))
        {
          ezi.c("Babel_telephony", (String)localObject1, new Object[0]);
          break;
        }
      }
      if (b.u())
      {
        ezi.c("Babel_telephony", "TeleSetupController.shouldAllowRing, network was was choosen manually, only checking for Wi-Fi connection", new Object[0]);
        if (!b.a)
        {
          ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, not connected to wifi", new Object[0]);
          break;
        }
        i1 = 1;
        continue;
      }
      x = ero.a(a, b.f().d(), false, b);
      if (x != null)
      {
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, in Wi-Fi calling experiment", new Object[0]);
        i1 = 1;
      }
      else
      {
        localObject1 = b.f().f();
        Object localObject3 = a;
        localObject2 = c;
        erc localerc = a;
        if (b.a)
        {
          ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, connected to wifi", new Object[0]);
          i1 = 0;
          label809:
          if (i1 == 0)
          {
            localObject3 = a;
            localObject2 = c;
            localerc = a;
            if (!b.a) {
              break label1098;
            }
            ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoing3GCall, connected to wifi", new Object[0]);
            i1 = 0;
          }
        }
        for (;;)
        {
          if (i1 != 0)
          {
            if (!b(paramess))
            {
              ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, data network latency high", new Object[0]);
              break;
              if (e != 13)
              {
                ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, not connected to LTE", new Object[0]);
                i1 = 0;
                break label809;
              }
              if (!aal.k((Context)localObject3))
              {
                ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, not connected to internet", new Object[0]);
                i1 = 0;
                break label809;
              }
              if ((((est)localObject2).c() == 2) && (ezm.j((String)localObject1)) && (aal.a((Context)localObject3, "babel_lte_fallback_for_outgoing_tmobile_emergency_call", true)))
              {
                ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, falling back to LTE for emergency call over T-Mobile", new Object[0]);
                i1 = 1;
                break label809;
              }
              if (aal.a((Context)localObject3, "babel_lte_outgoing_call_allowed", false))
              {
                ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, LTE outgoing call allowed by default", new Object[0]);
                i1 = 1;
                break label809;
              }
              if (aal.a((Context)localObject3, ((est)localObject2).c(), false))
              {
                localObject3 = String.valueOf("TeleWifiCallThreshold.shouldAllowOutgoingLteCall,on carrier where we support voip calling over LTE, carrierId: ");
                i1 = ((est)localObject2).c();
                ezi.c("Babel_telephony", String.valueOf(localObject3).length() + 11 + (String)localObject3 + i1, new Object[0]);
                i1 = 1;
                break label809;
              }
              ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoingLteCall, returning false", new Object[0]);
              i1 = 0;
              break label809;
              label1098:
              if (!aal.l(e))
              {
                ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoing3GCall, not connected to 3G", new Object[0]);
                i1 = 0;
                continue;
              }
              if (!aal.k((Context)localObject3))
              {
                ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowOutgoing3GCall, not connected to internet", new Object[0]);
                i1 = 0;
                continue;
              }
              if (aal.b((Context)localObject3, ((est)localObject2).c(), false))
              {
                localObject3 = String.valueOf("TeleWifiCallThreshold.shouldAllowOutgoing3GCall,on carrier where we support voip calling over 3G, carrierId: ");
                i1 = ((est)localObject2).c();
                ezi.c("Babel_telephony", String.valueOf(localObject3).length() + 11 + (String)localObject3 + i1, new Object[0]);
                i1 = 1;
                continue;
              }
              ezi.c("Babel_telephony", "TeleWifiCallThreshold.shouldAllowIncoming3GCall, returning false", new Object[0]);
              i1 = 0;
              continue;
            }
            ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, falling back to cellular data", new Object[0]);
            b.b(true);
            i1 = 1;
            break label121;
          }
        }
        if (!aal.a(a, b.h(), a, b, (String)localObject1)) {
          break;
        }
        if (a.a()) {
          ezi.c("Babel_telephony", "TeleSetupController.hasNetworkQualityForWifiCall, no cell service, not checking herrevad", new Object[0]);
        }
        for (;;)
        {
          label1314:
          boolean bool3;
          for (i1 = 1;; i1 = 0)
          {
            if (i1 != 0) {
              break label1449;
            }
            ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, bad network quality score", new Object[0]);
            break;
            i1 = eut.a(a).b();
            bool2 = dvp.K.b(i1);
            bool3 = aal.a(a, c, d, a);
            if (!bool2) {
              break label1422;
            }
            if (bool3)
            {
              a(2893, -1);
              break label1314;
            }
            a(2895, -1);
            ezi.c("Babel_telephony", "TeleSetupController.hasNetworkQualityForWifiCall using cell due to bad herrevad network quality score for the wifi network", new Object[0]);
          }
          label1422:
          if (bool3) {
            a(2894, -1);
          } else {
            a(2896, -1);
          }
        }
        label1449:
        if (a.a()) {
          ezi.c("Babel_telephony", "TeleSetupController.shouldCheckStunPingLatency, not checking, no cell service", new Object[0]);
        }
        for (i1 = 0;; i1 = 1)
        {
          if ((i1 == 0) || (b(paramess))) {
            break label1505;
          }
          ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, poor stun latency on Wi-Fi", new Object[0]);
          break;
        }
        label1505:
        ezi.c("Babel_telephony", "TeleSetupController.isWifiCallPossible, good network, using Wi-Fi", new Object[0]);
        i1 = 1;
      }
    }
    label1522:
    if (bool1)
    {
      ezi.c("Babel_telephony", "TeleSetupController.performWifiChooserWithCellState, ask each call is enabled", new Object[0]);
      if (a.a()) {
        ezi.c("Babel_telephony", "TeleSetupController.performWifiChooserWithCellState, no cell service, forcing wifi", new Object[0]);
      }
    }
    else
    {
      a(true);
      m();
      return;
    }
    a(new ewo(), "wifi_chooser");
  }
  
  public void a(hqe paramhqe, drz paramdrz)
  {
    ezi.c("Babel_telephony", "TeleSetupController.processRegisterDeviceResponse", new Object[0]);
    p();
    if ((TextUtils.equals(s.a(), paramhqe.b("account_name"))) && (TextUtils.equals(s.U(), paramhqe.b("effective_gaia_id"))))
    {
      ((erm)ilh.a(a, erm.class)).b(this);
      paramhqe = s;
      aal.w();
      if ((paramhqe != null) && (paramhqe.equals(s)))
      {
        boolean bool = dvd.h(s.g());
        ezi.c("Babel_telephony", 56 + "TeleSetupController.accountSetupComplete, isReady: " + bool, new Object[0]);
        c.removeCallbacks(d);
        if (!bool) {
          break label162;
        }
        o();
      }
    }
    return;
    label162:
    k();
  }
  
  public void a(imi paramimi, hzy paramhzy)
  {
    if (p)
    {
      if (k != null) {
        k.finish();
      }
      return;
    }
    hbs.a("Expected null", k);
    k = paramimi;
    l = paramhzy;
    if (y)
    {
      hbs.a("Expected null", n);
      hbs.a("Expected null", o);
      y = false;
      q();
      return;
    }
    hbs.b("Expected non-null", n);
    hbs.b("Expected non-null", o);
    a(n, o);
  }
  
  public void a(String paramString)
  {
    if (g) {
      return;
    }
    String str = String.valueOf(aal.s(paramString));
    if (str.length() != 0) {}
    for (str = "TeleSetupController.onGetProxyNumberSucceeded, proxy number: ".concat(str);; str = new String("TeleSetupController.onGetProxyNumberSucceeded, proxy number: "))
    {
      ezi.c("Babel_telephony", str, new Object[0]);
      hbs.b("Expected non-null", paramString);
      b.f().a(paramString);
      m();
      return;
    }
  }
  
  public void a(String paramString, Intent paramIntent)
  {
    String str = String.valueOf(paramString);
    if (str.length() != 0) {}
    for (str = "TeleSetupController.performShowDialogFailedAction, performing action: ".concat(str);; str = new String("TeleSetupController.performShowDialogFailedAction, performing action: "))
    {
      ezi.c("Babel_telephony", str, new Object[0]);
      if (!"cellular".equals(paramString)) {
        break;
      }
      a(false);
      d(2);
      return;
    }
    if ("wifi".equals(paramString))
    {
      a.startActivity(paramIntent);
      return;
    }
    if ("cancel".equals(paramString))
    {
      d(3);
      return;
    }
    paramString = String.valueOf(paramString);
    if (paramString.length() != 0) {}
    for (paramString = "TeleSetupController.performShowDialogFailedAction, unknown action: ".concat(paramString);; paramString = new String("TeleSetupController.performShowDialogFailedAction, unknown action: "))
    {
      ezi.e("Babel_telephony", paramString, new Object[0]);
      a(false);
      d(2);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    r = paramBoolean;
    if (d())
    {
      if (paramBoolean)
      {
        b.c();
        b.w();
      }
    }
    else {
      return;
    }
    b.b();
    b.x();
  }
  
  public void a(boolean paramBoolean, hpv paramhpv1, hpv paramhpv2, int paramInt1, int paramInt2)
  {
    ezi.c("Babel_telephony", String.format("TeleSetupController.onAccountHandlerStateTransition, %s -> %s", new Object[] { paramhpv1, paramhpv2 }), new Object[0]);
  }
  
  void b()
  {
    s();
  }
  
  public void b(int paramInt)
  {
    int i1 = aal.qM;
    Object localObject = null;
    if (k != null) {
      localObject = (evx)k.C_().a("message");
    }
    if (localObject == null)
    {
      localObject = a.getString(i1);
      String str = a.getString(paramInt);
      evx localevx = new evx();
      localevx.setArguments(new Bundle());
      localevx.a((String)localObject);
      localevx.b(str);
      a(localevx, "message");
      return;
    }
    ((evx)localObject).a(a.getString(i1));
    ((evx)localObject).b(a.getString(paramInt));
  }
  
  void b(String paramString)
  {
    A = paramString;
  }
  
  void c()
  {
    d(3);
  }
  
  public boolean d()
  {
    return j == 1;
  }
  
  public void e()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onActivityDestroyed", new Object[0]);
    k = null;
    d(3);
  }
  
  public void f()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onWifiChooserWifiChosen", new Object[0]);
    a(true);
    m();
  }
  
  public void g()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onWifiChooserCellularChosen", new Object[0]);
    a(false);
    m();
  }
  
  public void h()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onAccountChooserCancelled", new Object[0]);
    d(3);
  }
  
  public void i()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onTosAccepted", new Object[0]);
    e(aal.qD);
    int i1 = s.g();
    evt localevt = new evt(this);
    f = new evr(a, i1, localevt);
    f.d();
  }
  
  public void j()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onTosDeclined", new Object[0]);
    d(3);
  }
  
  void k()
  {
    if (d())
    {
      a(false);
      m();
      return;
    }
    b(aal.qL);
  }
  
  public void l()
  {
    ezi.c("Babel_telephony", "TeleSetupController.onMessageDone", new Object[0]);
    d(3);
  }
  
  public void m()
  {
    String str1 = String.valueOf(c(m));
    String str2 = String.valueOf(c(m + 1));
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 41 + String.valueOf(str2).length() + "TeleSetupController.advanceNextStep, " + str1 + " -> " + str2, new Object[0]);
    str1 = String.valueOf(aal.b(s));
    if (str1.length() != 0) {}
    for (str1 = "selectedAccount: ".concat(str1);; str1 = new String("selectedAccount: "))
    {
      ezi.c("Babel_telephony", str1, new Object[0]);
      m += 1;
      s();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     etk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */