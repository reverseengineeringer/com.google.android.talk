import android.content.Context;

final class hqw
  implements hqh
{
  hqw(hqq paramhqq) {}
  
  public String a()
  {
    return "upgrade:account_status";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    if (paramhqe.d("non_google_plus"))
    {
      paramhqe.i("non_google_plus");
      paramhqe.c("account_status", 2);
      return;
    }
    if (paramhqe.d("notifications_only"))
    {
      paramhqe.i("notifications_only");
      paramhqe.c("account_status", 3);
      return;
    }
    if (paramhqe.d("logged_in"))
    {
      paramhqe.i("logged_in");
      paramhqe.c("account_status", 4);
      return;
    }
    paramhqe.c("account_status", 5);
  }
}

/* Location:
 * Qualified Name:     hqw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */