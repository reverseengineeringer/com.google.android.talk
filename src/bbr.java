import android.content.Context;

final class bbr
  implements hqh
{
  bbr(bbq parambbq) {}
  
  public String a()
  {
    return "cmm-signed-out";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    if ((paramhqe.b("effective_gaia_id") != null) && (paramhqe.d("is_business_features_enabled")))
    {
      paramhqe.c("logged_in", true).c("logged_out", false);
      if (!a.a.a(paramhqe))
      {
        int i = a.b.b(paramhqe.b("account_name"), paramhqe.b("effective_gaia_id"));
        a.a.b(i);
      }
    }
  }
}

/* Location:
 * Qualified Name:     bbr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */