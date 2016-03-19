import android.content.Context;

final class bbs
  implements hqh
{
  bbs(bbq parambbq) {}
  
  public String a()
  {
    return "cmm-signed-out2";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    if ((paramhqe.b("effective_gaia_id") != null) && (paramhqe.d("is_business_features_enabled")) && (!a.a.a(paramhqe)) && (paramhqe.d("logged_in")))
    {
      int i = a.b.b(paramhqe.b("account_name"), paramhqe.b("effective_gaia_id"));
      a.a.b(i);
    }
  }
}

/* Location:
 * Qualified Name:     bbs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */