import android.content.Context;

final class bfl
  implements hqh
{
  bfl(bff parambff) {}
  
  public String a()
  {
    return "fix_sms_logged_off2";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    boolean bool2 = true;
    if ("SMS".equals(paramhqe.b("account_name")))
    {
      if (!paramhqe.d("is_sms_account")) {
        break label70;
      }
      paramContext = dvd.d;
      if (!dvi.a()) {
        break label70;
      }
      bool1 = true;
      paramhqe.c("logged_in", bool1);
      if (bool1) {
        break label75;
      }
    }
    label70:
    label75:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      paramhqe.c("logged_out", bool1);
      return;
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     bfl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */