import android.content.Context;
import android.os.Handler;
import android.telecom.Connection;
import android.telecom.DisconnectCause;
import android.telecom.TelecomManager;
import android.text.TextUtils;
import com.google.android.apps.hangouts.telephony.TeleConnectionService;

final class eru
  implements eqt
{
  boolean a;
  private final Context b;
  private final erg c;
  private final erx d;
  private final eqs e;
  private eqs f;
  private erg g;
  private int h;
  private int i = 1;
  private int j = 1;
  private DisconnectCause k;
  private boolean l;
  private Handler m = new Handler();
  private final Runnable n = new erv(this);
  
  private eru(Context paramContext, erg paramerg, erx paramerx, int paramInt)
  {
    b = paramContext;
    c = paramerg;
    d = paramerx;
    h = paramInt;
    e = paramerg.j();
    e.a(this);
    i = paramerg.getState();
    paramerg.a(this);
    e.b();
  }
  
  private void a(int paramInt)
  {
    if (c.getState() != paramInt) {}
    switch (paramInt)
    {
    case 1: 
    default: 
      return;
    case 2: 
      c.setRinging();
      return;
    case 3: 
      c.setDialing();
      return;
    case 4: 
      c.setActive();
      return;
    case 5: 
      c.setOnHold();
      return;
    }
    hbs.b("Expected non-null", k);
    c.setDisconnected(k);
    c.destroy();
    c.b(null);
  }
  
  static void a(Context paramContext, erg paramerg, int paramInt)
  {
    ezi.c("Babel_telephony", 64 + "TeleHandoffController.handoffWifiToCellular, reason: " + paramInt, new Object[0]);
    if (paramerg.k() != null)
    {
      if (paramInt == 3)
      {
        ezi.c("Babel_telephony", "TeleHandoffController.handoffWifiToCellular, notify handoff about network loss", new Object[0]);
        paramContext = paramerg.k();
        if (h != 3)
        {
          h = 3;
          if (f != null) {
            paramContext.a(true, 0);
          }
        }
      }
      ezi.c("Babel_telephony", "TeleHandoffController.handoffWifiToCellular, handoff pending, skipping", new Object[0]);
      return;
    }
    ery localery = new ery(paramContext, (TelecomManager)paramerg.d().getSystemService("telecom"));
    localery.a(new eru(paramContext, paramerg, localery, paramInt));
    localery.a();
  }
  
  static boolean a(Context paramContext)
  {
    return aal.a(paramContext).a("babel_manual_handoff_allowed", false);
  }
  
  public static boolean a(Context paramContext, eqs parameqs, boolean paramBoolean1, int paramInt, boolean paramBoolean2)
  {
    if (!aal.q(paramContext))
    {
      ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, no permissions", new Object[0]);
      return false;
    }
    if ((parameqs.d() == 2) && (!aal.s(paramContext)))
    {
      ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, can't make cell calls", new Object[0]);
      return false;
    }
    ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible", new Object[0]);
    if (paramBoolean1)
    {
      ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, handoff is already complete", new Object[0]);
      return false;
    }
    if (parameqs.a().v())
    {
      ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, handoff not allowed for LTE fallback calls", new Object[0]);
      return false;
    }
    bdp localbdp = aal.a(paramContext);
    switch (paramInt)
    {
    case 4: 
    case 8: 
    default: 
      ezi.c("Babel_telephony", 76 + "TeleHandoffController.isHandoffPossible, unknown handoff reason: " + paramInt, new Object[0]);
      return false;
    case 2: 
      if (!a(paramContext))
      {
        ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, manual handoff not allowed", new Object[0]);
        return false;
      }
      break;
    case 3: 
      if (parameqs.d() == 2)
      {
        if (!localbdp.a("babel_handoff_on_wifi_loss_allowed", true))
        {
          ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, handoff on wifi loss not allowed", new Object[0]);
          return false;
        }
      }
      else if (!localbdp.a("babel_handoff_on_cell_loss_allowed", true))
      {
        ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, handoff on cell loss not allowed", new Object[0]);
        return false;
      }
      break;
    case 1: 
    case 5: 
    case 6: 
    case 7: 
    case 9: 
    case 10: 
      if (ezm.j(parameqs.a().f().c()))
      {
        ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, emergency call, handoff for network optimization not allowed", new Object[0]);
        return false;
      }
      if (paramBoolean2)
      {
        ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, network optimizing handoff disabled when calling network was choosen manually", new Object[0]);
        return false;
      }
      if (paramInt == 10)
      {
        paramBoolean1 = localbdp.a("babel_activity_handoff_allowed", true);
        if (paramBoolean1) {}
        for (paramContext = "allowed.";; paramContext = "not allowed.")
        {
          ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, activity recognition handoff is %s", new Object[] { paramContext });
          return paramBoolean1;
        }
      }
      if (parameqs.d() == 2)
      {
        if (!localbdp.a("babel_wifi_network_optimizing_handoff_allowed", true))
        {
          ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, handoff for wifi network optimization not allowed", new Object[0]);
          return false;
        }
      }
      else if (!localbdp.a("babel_cell_network_optimizing_handoff_allowed", true))
      {
        ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, handoff for cell network optimization not allowed", new Object[0]);
        return false;
      }
      break;
    }
    parameqs = parameqs.a().h();
    if ((parameqs.b(paramContext)) && (!localbdp.a("babel_international_handoff_allowed", false)))
    {
      ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, handoff while international not allowed", new Object[0]);
      return false;
    }
    if ((parameqs.a() != 1) && (!localbdp.a("babel_roaming_handoff_allowed", true)))
    {
      ezi.c("Babel_telephony", "TeleHandoffController.isHandoffPossible, handoff while roaming not allowed", new Object[0]);
      return false;
    }
    return true;
  }
  
  static void b(Context paramContext, erg paramerg, int paramInt)
  {
    ezi.c("Babel_telephony", 64 + "TeleHandoffController.handoffCellularToWifi, reason: " + paramInt, new Object[0]);
    if (paramerg.k() != null)
    {
      ezi.c("Babel_telephony", "TeleHandoffController.handoffCellularToWifi, handoff pending, skipping", new Object[0]);
      return;
    }
    ert localert = new ert(paramContext, cfc.a());
    localert.a(new eru(paramContext, paramerg, localert, paramInt));
    localert.a();
  }
  
  erg a()
  {
    return c;
  }
  
  void a(eqs parameqs)
  {
    String str = String.valueOf(parameqs);
    ezi.c("Babel_telephony", String.valueOf(str).length() + 52 + "TeleHandoffController.onHandoffStarted, theNewCall: " + str, new Object[0]);
    int i1 = aal.a(b, "babel_handoff_timeout_millis", 30000);
    m.postDelayed(n, i1);
    f = parameqs;
    f.a(this);
    g = new erg(e.a().f(), e.a().i());
    g.setDialing();
    g.b(f);
    if (h == 3)
    {
      a(true, 0);
      return;
    }
    g();
  }
  
  public final void a(eqs parameqs, int paramInt)
  {
    ezi.c("Babel_telephony", "TeleHandoffController.onTeleCallStateChanged", new Object[0]);
    if (paramInt != 6)
    {
      if (parameqs != e) {
        break label36;
      }
      i = paramInt;
    }
    for (;;)
    {
      g();
      return;
      label36:
      if (parameqs == f) {
        j = paramInt;
      }
    }
  }
  
  public final void a(eqs parameqs, DisconnectCause paramDisconnectCause)
  {
    ezi.c("Babel_telephony", "TeleHandoffController.onDisconnected", new Object[0]);
    if (parameqs == e) {
      i = 6;
    }
    for (;;)
    {
      k = paramDisconnectCause;
      g();
      return;
      if (parameqs == f) {
        j = 6;
      }
    }
  }
  
  void a(boolean paramBoolean, int paramInt)
  {
    if (l) {
      return;
    }
    l = true;
    ezi.c("Babel_telephony", String.format("TeleHandoffController.onHandoffComplete(%b, %s)", new Object[] { Boolean.valueOf(paramBoolean), Integer.valueOf(paramInt) }), new Object[0]);
    e.b(this);
    if (f != null)
    {
      f.b(this);
      if (!paramBoolean) {
        f.a(h, paramInt);
      }
    }
    if (g != null)
    {
      if ((paramBoolean) && (!TextUtils.isEmpty(g.m()))) {
        c.a(g.m());
      }
      g.b(null);
      g = null;
    }
    c.a(null);
    m.removeCallbacks(n);
    if (paramBoolean)
    {
      if (f != null)
      {
        eqs localeqs = f;
        localeqs.a(true);
        m.postDelayed(new erw(this, localeqs), 1000L);
        c.b(f);
      }
      a(j);
      e.a(h, paramInt);
    }
    for (;;)
    {
      d.c();
      return;
      a(i);
      e.b();
      if (h == 3) {
        e.a(h, paramInt);
      }
    }
  }
  
  int b()
  {
    return i;
  }
  
  int c()
  {
    return j;
  }
  
  boolean d()
  {
    return a;
  }
  
  void e()
  {
    ezi.c("Babel_telephony", "TeleHandoffController.cancelHandoffAndEndCall", new Object[0]);
    if (f != null) {
      f.g();
    }
    e.g();
    a(false, 219);
  }
  
  boolean f()
  {
    return a(b, e, l, h, a().u());
  }
  
  void g()
  {
    String str1 = String.valueOf(Connection.stateToString(i));
    String str2 = String.valueOf(Connection.stateToString(j));
    ezi.c("Babel_telephony", String.valueOf(str1).length() + 74 + String.valueOf(str2).length() + "TeleHandoffController.checkHandoffComplete, oldCallState: " + str1 + ", newCallState: " + str2, new Object[0]);
    d.b();
  }
}

/* Location:
 * Qualified Name:     eru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */