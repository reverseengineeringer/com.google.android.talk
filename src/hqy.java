import android.content.Context;

final class hqy
  implements hqh
{
  hqy(hqq paramhqq) {}
  
  public String a()
  {
    return "add_skinny_page_boolean";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (!paramhqe.d("is_google_plus"))
    {
      bool1 = bool2;
      if (paramhqe.a("page_count", 0) > 0) {
        bool1 = true;
      }
    }
    paramhqe.c("gplus_skinny_page", bool1);
  }
}

/* Location:
 * Qualified Name:     hqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */