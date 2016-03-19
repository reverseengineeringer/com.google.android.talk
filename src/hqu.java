import android.content.Context;

final class hqu
  implements hqh
{
  hqu(hqq paramhqq) {}
  
  public String a()
  {
    return "upgrade_direct_login_to_managed_login";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    boolean bool2;
    if (paramhqe.a("is_direct_login"))
    {
      bool2 = paramhqe.a("is_direct_login", false);
      if (!bool2)
      {
        bool1 = true;
        paramhqe.c("is_managed_account", bool1);
        paramhqe.i("is_direct_login");
      }
    }
    for (boolean bool1 = bool2;; bool1 = false)
    {
      if ((paramhqe.a("is_plus_page", false)) && (!bool1)) {
        paramhqe.c("is_managed_account", true);
      }
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     hqu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */