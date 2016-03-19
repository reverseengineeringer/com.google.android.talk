import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

class cps
  implements cpl, dxj
{
  public cpt a;
  private final Context b;
  private final eot c;
  private awo d;
  
  public cps(Context paramContext)
  {
    d = ((awo)ilh.a(paramContext, awo.class));
    c = ((eot)ilh.a(paramContext, eot.class));
    b = paramContext;
  }
  
  public void a(bg parambg, int paramInt)
  {
    if (a(paramInt))
    {
      cpm localcpm = new cpm();
      localcpm.a(this);
      localcpm.a(parambg, null);
    }
  }
  
  public void a(hqe paramhqe, drl paramdrl)
  {
    boolean bool = nx;
    ezi.a("Babel", "Setting hasInviteHappyStatePromoBeenSeen from selfInfoResponse: %s", new Object[] { Boolean.valueOf(bool) });
    paramhqe.c("invite_happy_state_promo_seen", bool);
  }
  
  public boolean a(int paramInt)
  {
    a = new cpt(paramInt);
    return (dvp.k.b(paramInt)) && (byp.j()) && (!d.p(paramInt)) && (d.k(paramInt)) && (!c.a(paramInt)) && (!d(paramInt)) && (!a.a());
  }
  
  public void b(int paramInt)
  {
    ezi.a("Babel", "setInviteHappyStatePromoSeen", new Object[0]);
    RealTimeChatService.a(ebi.b(), paramInt, true);
    ((hpz)ilh.a(b, hpz.class)).b(paramInt).b("invite_happy_state_promo_seen", true).d();
  }
  
  public void c(int paramInt)
  {
    ezi.a("Babel", "updateUserSettingsToHappyState", new Object[0]);
    a.b();
    b(paramInt);
  }
  
  public boolean d(int paramInt)
  {
    boolean bool = ((hpz)ilh.a(b, hpz.class)).a(paramInt).d("invite_happy_state_promo_seen");
    ezi.a("Babel", "hasUserSeenInviteHappyStatePromo: %s", new Object[] { Boolean.valueOf(bool) });
    return bool;
  }
}

/* Location:
 * Qualified Name:     cps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */