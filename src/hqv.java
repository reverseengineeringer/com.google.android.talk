import android.content.Context;

final class hqv
  implements hqh
{
  hqv(hqq paramhqq) {}
  
  public String a()
  {
    return "add_effective_gaia_id";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    if (paramhqe.d("is_managed_account")) {
      paramhqe.c("effective_gaia_id", paramhqe.b("gaia_id"));
    }
  }
}

/* Location:
 * Qualified Name:     hqv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */