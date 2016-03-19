import android.content.Context;
import android.text.TextUtils;

final class awu
  implements awo
{
  private final Context a;
  private final hpz b;
  private final eot c;
  
  awu(Context paramContext)
  {
    a = paramContext;
    b = ((hpz)ilh.a(paramContext, hpz.class));
    c = ((eot)ilh.a(paramContext, eot.class));
  }
  
  private String a(int paramInt, boolean paramBoolean)
  {
    hqb localhqb = s(paramInt);
    Object localObject;
    if (c.a(paramInt)) {
      localObject = a.getString(aal.hY);
    }
    String str;
    do
    {
      return (String)localObject;
      str = localhqb.b("display_name");
      if (!paramBoolean) {
        break;
      }
      localObject = str;
    } while (!TextUtils.isEmpty(str));
    return localhqb.b("account_name");
  }
  
  static boolean a(hqb paramhqb)
  {
    return paramhqb.d("is_gv_sms_integration_enabled");
  }
  
  private hqb s(int paramInt)
  {
    return b.a(paramInt);
  }
  
  public hzq a()
  {
    return new awx();
  }
  
  public String a(int paramInt)
  {
    return s(paramInt).b("account_name");
  }
  
  public boolean a(String paramString)
  {
    awp localawp = (awp)ilh.b(a, awp.class);
    return (localawp != null) && (localawp.a(paramString));
  }
  
  public hzq b()
  {
    return new awv();
  }
  
  public String b(int paramInt)
  {
    return a(paramInt, true);
  }
  
  public String c(int paramInt)
  {
    if (s(paramInt).b("effective_gaia_id") != null) {}
    for (boolean bool = true;; bool = false) {
      return a(paramInt, bool);
    }
  }
  
  public boolean d(int paramInt)
  {
    return (c.c(paramInt)) || (e(paramInt));
  }
  
  public boolean e(int paramInt)
  {
    return a(s(paramInt));
  }
  
  public boolean f(int paramInt)
  {
    hqb localhqb = s(paramInt);
    return (localhqb.a("is_gv_calling_available")) && (localhqb.d("gv_use_tycho_branding"));
  }
  
  public boolean g(int paramInt)
  {
    return !s(paramInt).a("allowed_for_domain", true);
  }
  
  public boolean h(int paramInt)
  {
    return s(paramInt).d("is_history_forced");
  }
  
  public boolean i(int paramInt)
  {
    return s(paramInt).d("is_history_default_on");
  }
  
  public String j(int paramInt)
  {
    return s(paramInt).a("domain_name", "");
  }
  
  public boolean k(int paramInt)
  {
    return (aal.a(a, "babel_allowed_for_domain_bit", true)) || (s(paramInt).a("allowed_for_domain", true));
  }
  
  public boolean l(int paramInt)
  {
    return s(paramInt).d("show_chat_warning");
  }
  
  public boolean m(int paramInt)
  {
    return s(paramInt).d("blocked_for_child");
  }
  
  public boolean n(int paramInt)
  {
    return s(paramInt).a("is_photo_service_enabled", true);
  }
  
  public boolean o(int paramInt)
  {
    return (!c.a(paramInt)) && (s(paramInt).a("allowed_for_domain", true));
  }
  
  public boolean p(int paramInt)
  {
    boolean bool = false;
    if (s(paramInt).a("account_age_group", 0) == 3) {
      bool = true;
    }
    return bool;
  }
  
  public boolean q(int paramInt)
  {
    boolean bool = false;
    paramInt = s(paramInt).a("account_age_group", 0);
    if ((paramInt == 3) || (paramInt == 2)) {
      bool = true;
    }
    return bool;
  }
  
  public boolean r(int paramInt)
  {
    hqb localhqb = s(paramInt);
    return (e(paramInt)) && (f(paramInt)) && (a(localhqb.b("account_name"))) && (localhqb.b("effective_gaia_id") == null);
  }
}

/* Location:
 * Qualified Name:     awu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */