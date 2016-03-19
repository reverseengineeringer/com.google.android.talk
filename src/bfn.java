import android.content.Context;

final class bfn
  implements hqh
{
  bfn(bff parambff) {}
  
  public String a()
  {
    return "legacy_avatar_url";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    if (paramhqe.a("avatar_url"))
    {
      paramhqe.c("profile_photo_url", paramhqe.b("avatar_url"));
      paramhqe.i("avatar_url");
    }
  }
}

/* Location:
 * Qualified Name:     bfn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */