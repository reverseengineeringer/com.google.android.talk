import android.content.Context;
import android.os.SystemClock;
import android.telecom.Connection;

final class ert
  implements erx
{
  private final Context a;
  private final cfc b;
  private eru c;
  
  ert(Context paramContext, cfc paramcfc)
  {
    a = paramContext;
    b = paramcfc;
  }
  
  void a()
  {
    ezi.c("Babel_telephony", "TeleHandoffCellularToWifi.startHandoff", new Object[0]);
    if (!c.f())
    {
      c.a(false, 224);
      return;
    }
    if (b.m())
    {
      ezi.c("Babel_telephony", "TeleHandoffCellularToWifi.startHandoff, wifi call already exists", new Object[0]);
      c.a(false, 221);
      return;
    }
    Object localObject1 = c.a();
    int i = c.b();
    if (i != 4)
    {
      localObject1 = String.valueOf(Connection.stateToString(i));
      if (((String)localObject1).length() != 0) {}
      for (localObject1 = "TeleHandoffCellularToWifi.isHandoffPossible, not possible for call state: ".concat((String)localObject1);; localObject1 = new String("TeleHandoffCellularToWifi.isHandoffPossible, not possible for call state: "))
      {
        ezi.c("Babel_telephony", (String)localObject1, new Object[0]);
        c.a(false, 227);
        return;
      }
    }
    if (((erg)localObject1).n() == null)
    {
      ezi.c("Babel_telephony", "TeleHandoffCellularToWifi.startHandoff, no account name", new Object[0]);
      c.a(false, 225);
      return;
    }
    if (((erg)localObject1).p() == null)
    {
      ezi.c("Babel_telephony", "TeleHandoffCellularToWifi.startHandoff, no hangout id", new Object[0]);
      c.a(false, 226);
      return;
    }
    if (((erg)localObject1).getConference() != null)
    {
      ezi.c("Babel_telephony", "TeleHandoffCellularToWifi.startHandoff, in conference", new Object[0]);
      c.a(false, 228);
      return;
    }
    if (!aal.l(a))
    {
      ezi.c("Babel_telephony", "TeleHandoffCellularToWifi.startHandoff, not connected to wifi", new Object[0]);
      c.a(false, 210);
      return;
    }
    ezi.c("Babel_telephony", "TeleHandoffCellularToWifi.createWifiCall", new Object[0]);
    localObject1 = c.a();
    cgs localcgs = new cgu(((erg)localObject1).n(), 1).a(2).e(((erg)localObject1).p()).h(((erg)localObject1).r()).a();
    lbz locallbz = new lbz();
    Object localObject2 = aal.h(((erg)localObject1).d());
    if (localObject2 != null) {
      d = ((lca)localObject2);
    }
    localObject2 = aal.a(((erg)localObject1).f().f(), aal.p(), false, null, null, 0);
    b.a(localcgs, false, null, true, (cyx)localObject2, 85, 1, false, SystemClock.elapsedRealtime(), locallbz, ((erg)localObject1).i());
    b.u();
    localObject1 = new eua(a, null, ((erg)localObject1).j().e(), ((erg)localObject1).g());
    ((eua)localObject1).a(b.r());
    c.a((eqs)localObject1);
  }
  
  void a(eru parameru)
  {
    c = parameru;
  }
  
  public void b()
  {
    if (c.c() == 6) {
      c.a(false, 0);
    }
    do
    {
      return;
      if ((c.c() == 4) || (c.b() == 6))
      {
        c.a(true, 0);
        return;
      }
    } while (!c.d());
    c.a(false, 304);
  }
  
  public void c() {}
}

/* Location:
 * Qualified Name:     ert
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */