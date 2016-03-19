import android.content.Context;

final class hqx
  implements hqh
{
  hqx(hqq paramhqq) {}
  
  public String a()
  {
    return "upgrade:remove_account_status";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    switch (paramhqe.a("account_status", 0))
    {
    case 0: 
    case 2: 
    default: 
      return;
    case 1: 
      paramhqe.c("is_bad", true);
      return;
    case 3: 
      paramhqe.c("gplus_no_mobile_tos", true);
      return;
    case 4: 
      paramhqe.c("is_google_plus", true);
      paramhqe.c("logged_in", true);
      return;
    }
    paramhqe.c("is_google_plus", true);
    paramhqe.c("logged_out", true);
  }
}

/* Location:
 * Qualified Name:     hqx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */