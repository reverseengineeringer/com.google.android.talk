import android.content.Context;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

class czi
  implements cze, dxj
{
  private final Context a;
  
  public czi(Context paramContext)
  {
    a = paramContext;
  }
  
  static boolean a(Context paramContext, int paramInt)
  {
    boolean bool = ((hpz)ilh.a(paramContext, hpz.class)).a(paramInt).d("peer_to_peer_acknowledgment_needed");
    ezi.a("Babel", "isPeerToPeerAcknowledgementNeeded: %s", new Object[] { Boolean.valueOf(bool) });
    return bool;
  }
  
  public void a(hqe paramhqe, drl paramdrl)
  {
    boolean bool = nw;
    ezi.a("Babel", "Setting isPeerToPeerAcknowledgmentNeeded from selfInfoResponse: %s", new Object[] { Boolean.valueOf(bool) });
    paramhqe.c("peer_to_peer_acknowledgment_needed", bool);
  }
  
  public boolean a(int paramInt)
  {
    if (a(a, paramInt))
    {
      boolean bool = dvp.c.b(paramInt);
      String.format("%s experiment enabled? %s, (def=%s srv=%s)", new Object[] { "93dbdb4d", Boolean.valueOf(bool), dvp.c.d(), dvp.c.a(paramInt) });
      if (bool) {
        return true;
      }
    }
    return false;
  }
  
  public au b(int paramInt)
  {
    if (a(paramInt))
    {
      czf localczf = new czf();
      localczf.b(paramInt);
      localczf.a(this);
      return localczf;
    }
    return null;
  }
  
  public void c(int paramInt)
  {
    ezi.a("Babel", "setPeerToPeerAcknowledged", new Object[0]);
    RealTimeChatService.a(paramInt, 31, false);
    ((hpz)ilh.a(a, hpz.class)).b(paramInt).b("peer_to_peer_acknowledgment_needed", false).d();
  }
}

/* Location:
 * Qualified Name:     czi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */