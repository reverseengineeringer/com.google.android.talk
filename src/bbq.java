import android.content.Context;
import java.util.List;

public final class bbq
  implements dxj, hqf
{
  final awm a;
  final hpz b;
  
  bbq(Context paramContext)
  {
    a = ((awm)ilh.a(paramContext, awm.class));
    b = ((hpz)ilh.a(paramContext, hpz.class));
  }
  
  public void a(Context paramContext, hqe paramhqe) {}
  
  public void a(hqe paramhqe, drl paramdrl)
  {
    if ((paramhqe.b("effective_gaia_id") != null) && (nm) && (!paramhqe.a("logged_out", false)))
    {
      paramhqe.c("logged_in", true).c("logged_out", false);
      if (!a.a(paramhqe)) {
        aal.a(new bbt(this, b.b(paramhqe.b("account_name"), paramhqe.b("effective_gaia_id"))));
      }
    }
  }
  
  public void a(List<hqh> paramList)
  {
    paramList.add(new bbr(this));
    paramList.add(new bbs(this));
  }
}

/* Location:
 * Qualified Name:     bbq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */