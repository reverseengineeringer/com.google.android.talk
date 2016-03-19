import android.content.Context;

final class hqt
  implements hqh
{
  hqt(hqq paramhqq) {}
  
  public String a()
  {
    return "upgrade:active_to_logged_in";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    if (paramhqe.d("active"))
    {
      paramhqe.i("active");
      paramhqe.c("logged_in", true);
    }
  }
}

/* Location:
 * Qualified Name:     hqt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */