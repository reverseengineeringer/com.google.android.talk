import android.content.Context;

final class bfk
  implements hqh
{
  bfk(bff parambff) {}
  
  public String a()
  {
    return "logged_off_to_logged_in";
  }
  
  public void a(Context paramContext, hqe paramhqe)
  {
    boolean bool2 = true;
    boolean bool1 = paramhqe.a("logged_off", false);
    paramContext = String.valueOf(ezi.b(paramhqe.b("account_name")));
    ezi.c("Babel", String.valueOf(paramContext).length() + 35 + "Account " + paramContext + " logged off: " + bool1 + " migrated", new Object[0]);
    if ("SMS".equals(paramhqe.b("account_name")))
    {
      if (paramhqe.d("is_sms_account"))
      {
        paramContext = dvd.d;
        if (dvi.a()) {}
      }
      else
      {
        bool1 = true;
      }
    }
    else {
      if (bool1) {
        break label159;
      }
    }
    for (;;)
    {
      paramhqe.c("logged_in", bool2);
      paramhqe.c("logged_out", bool1);
      paramhqe.i("logged_off");
      return;
      bool1 = false;
      break;
      label159:
      bool2 = false;
    }
  }
}

/* Location:
 * Qualified Name:     bfk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */