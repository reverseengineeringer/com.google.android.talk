import android.content.Intent;

public final class egc
  implements egs
{
  private static final long serialVersionUID = 1L;
  public final int a;
  public final long b;
  
  public egc(jyg paramjyg)
  {
    a = aal.a(a.b, 0);
    if (a == 0)
    {
      ezi.e("Babel", "ClientDeclineAllInvitesNotification with unknown affinity", new Object[0]);
      b = 0L;
      return;
    }
    b = aal.a(a.a, 0L);
  }
  
  public void a(int paramInt, knq<Intent> paramknq)
  {
    new bfz(aal.oJ, paramInt).a(a, b);
  }
}

/* Location:
 * Qualified Name:     egc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */