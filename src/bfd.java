import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.apps.hangouts.hangout.StressMode;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class bfd
{
  private final hpz a;
  private final awo b;
  private final eot c;
  private final String d;
  private final String e;
  private final boolean f;
  private czb g;
  
  public bfd(hpz paramhpz, awo paramawo, eot parameot, String paramString1, String paramString2)
  {
    a = paramhpz;
    d = ((String)hbs.b("Expected non-null", paramString1));
    e = paramString2;
    f = "SMS".equals(d);
    b = paramawo;
    c = parameot;
  }
  
  public static String F()
  {
    String str = ezm.f();
    if (!TextUtils.isEmpty(str)) {
      return ezm.p(ezm.k(str));
    }
    return aal.oJ.getResources().getString(StressMode.jK);
  }
  
  private hqb V()
  {
    return a.a(g());
  }
  
  private boolean W()
  {
    return V().a("is_gv_calling_available");
  }
  
  private static boolean X()
  {
    return ilh.c(aal.oJ, dhn.class).size() > 0;
  }
  
  private static boolean c(String paramString)
  {
    return ((eot)ilh.a(aal.oJ, eot.class)).h().equals(paramString);
  }
  
  public boolean A()
  {
    return V().d("is_business_features_enabled");
  }
  
  public boolean B()
  {
    return V().d("business_features_promo_shown");
  }
  
  public boolean C()
  {
    return V().a("phone_verification_prompt_shown", true);
  }
  
  public boolean D()
  {
    return V().d("gv_can_use_caller_id_feature");
  }
  
  public int E()
  {
    if (f) {
      return 3;
    }
    if ((n()) || (x())) {
      return 0;
    }
    return 1;
  }
  
  public String G()
  {
    if (K())
    {
      String str = ezm.f();
      if (!TextUtils.isEmpty(str)) {
        return ezm.k(str);
      }
      return "unknown_sim_number";
    }
    return null;
  }
  
  public String H()
  {
    if (x())
    {
      String str1 = v();
      if (str1 != null)
      {
        str1 = String.valueOf(ezm.k(str1));
        String str2 = String.valueOf("_gv");
        if (str2.length() != 0) {
          return str1.concat(str2);
        }
        return new String(str1);
      }
    }
    return null;
  }
  
  public boolean I()
  {
    String str = v();
    return (!TextUtils.isEmpty(str)) && (c(str));
  }
  
  public boolean J()
  {
    if (f) {}
    while ((!K()) || (!x())) {
      return false;
    }
    return c("auto");
  }
  
  public boolean K()
  {
    return (n()) && (ezm.e()) && ((f) || (!b.r(g())));
  }
  
  public int L()
  {
    int i = 2;
    if (f) {
      return 3;
    }
    boolean bool1 = K();
    boolean bool2 = x();
    String str3;
    if ((bool1) && (bool2))
    {
      str3 = ((eot)ilh.a(aal.oJ, eot.class)).h();
      if (str3.equals("auto")) {
        i = 0;
      }
    }
    label131:
    label134:
    for (;;)
    {
      return i;
      if (!str3.equals(G()))
      {
        if (str3.equals(H())) {
          continue;
        }
        String str2 = v();
        String str1 = str2;
        if (str2 != null) {
          str1 = ezm.k(str2);
        }
        if (!str3.equals(str1)) {
          break label131;
        }
      }
      for (i = 2;; i = 3)
      {
        break;
        if (bool2) {
          break label134;
        }
        i = 3;
        break;
      }
    }
  }
  
  public String M()
  {
    StringBuilder localStringBuilder = new StringBuilder(64);
    localStringBuilder.append(ezi.b(d));
    return localStringBuilder.toString();
  }
  
  public int N()
  {
    int j = 3;
    int i;
    if (!W()) {
      i = 0;
    }
    do
    {
      do
      {
        return i;
        if (!V().d("gv_emergency_dialing_supported")) {
          break;
        }
        i = j;
      } while (!X());
      if (V().d("is_gv_calling_available")) {
        return 1;
      }
      i = j;
    } while (!V().d("gv_should_show_voice_tos"));
    return 2;
  }
  
  public boolean O()
  {
    if (!W()) {}
    int i;
    do
    {
      return false;
      i = N();
    } while ((i != 1) && (i != 2));
    return true;
  }
  
  public String P()
  {
    if (!W()) {
      return null;
    }
    return V().b("gv_account_balance");
  }
  
  public boolean Q()
  {
    if (!W()) {}
    while ((!V().d("gv_emergency_dialing_supported")) || (!X())) {
      return false;
    }
    return true;
  }
  
  @Deprecated
  public boolean R()
  {
    return b.f(g());
  }
  
  public boolean S()
  {
    return (w()) && (aal.a(this, bhh.b)) && (!V().d("gv_sms_integration_shown")) && (!x());
  }
  
  public boolean T()
  {
    boolean bool = false;
    if ((!y()) || (aal.a(aal.oJ, "babel_enable_plus_page_video", false))) {
      bool = true;
    }
    return bool;
  }
  
  public String U()
  {
    return e;
  }
  
  public int a(int paramInt)
  {
    int i = L();
    if (i == 0)
    {
      if (aal.f(paramInt)) {
        return paramInt;
      }
      return 2;
    }
    return i;
  }
  
  @Deprecated
  public String a()
  {
    return d;
  }
  
  public boolean a(czb paramczb)
  {
    if (!e()) {
      return false;
    }
    return g.a(paramczb);
  }
  
  public boolean a(String paramString)
  {
    paramString = (dkc)bff.a(V()).get(paramString);
    return (paramString != null) && (paramString.b());
  }
  
  public czb b()
  {
    if (!e())
    {
      String str = String.valueOf(ezi.b(d));
      ezi.e("Babel", String.valueOf(str).length() + 73 + "mParticipantId id not yet set for account: " + str + " -- account not yet signed in?", new Object[0]);
      throw new IllegalStateException("mParticipantId id not yet set, account not yet signed in?");
    }
    return g;
  }
  
  public boolean b(String paramString)
  {
    paramString = (dkc)bff.a(V()).get(paramString);
    return (paramString != null) && (paramString.d());
  }
  
  @Deprecated
  public String c()
  {
    return b.b(g());
  }
  
  public boolean d()
  {
    if ((!e()) || (TextUtils.isEmpty(g.a))) {}
    while (f()) {
      return false;
    }
    return true;
  }
  
  public boolean e()
  {
    if (g != null) {}
    do
    {
      return true;
      hqb localhqb = V();
      if ((localhqb.a("gaia_id")) || (localhqb.a("chat_id"))) {
        g = new czb(localhqb.b("gaia_id"), localhqb.b("chat_id"));
      }
    } while (g != null);
    return false;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      do
      {
        return false;
      } while (!(paramObject instanceof bfd));
      paramObject = (bfd)paramObject;
    } while ((!d.equals(d)) || (!TextUtils.equals(e, e)));
    return true;
  }
  
  public boolean f()
  {
    if ((!e()) || (TextUtils.isEmpty(g.a))) {}
    for (;;)
    {
      return false;
      if (b.k(g())) {
        if ((!V().a("chat_archive_enabled", true)) && (!k())) {
          break label85;
        }
      }
      label85:
      for (int i = 1; (i == 0) || (b.m(g())); i = 0) {
        return true;
      }
    }
  }
  
  public int g()
  {
    int i = a.b(d, e);
    if (i == -1) {
      ezi.d("Babel", "Returning invalid account ID", new Object[0]);
    }
    return i;
  }
  
  @Deprecated
  public boolean h()
  {
    return b.q(g());
  }
  
  public int hashCode()
  {
    int j = d.hashCode();
    int i = j;
    if (e != null) {
      i = j * 31 + e.hashCode();
    }
    return i;
  }
  
  @Deprecated
  public String i()
  {
    return b.j(g());
  }
  
  @Deprecated
  public boolean j()
  {
    return b.l(g());
  }
  
  @Deprecated
  public boolean k()
  {
    return b.g(g());
  }
  
  @Deprecated
  public boolean l()
  {
    return b.h(g());
  }
  
  @Deprecated
  public boolean m()
  {
    return b.i(g());
  }
  
  @Deprecated
  public boolean n()
  {
    return c.c(g());
  }
  
  @Deprecated
  public boolean o()
  {
    return (!f) && (V().a("allowed_for_domain", true));
  }
  
  public boolean p()
  {
    return !f;
  }
  
  public String q()
  {
    return V().b("profile_photo_url");
  }
  
  public boolean r()
  {
    Iterator localIterator = bff.a(V()).values().iterator();
    while (localIterator.hasNext())
    {
      dkc localdkc = (dkc)localIterator.next();
      if ((localdkc != null) && (localdkc.c())) {
        return true;
      }
    }
    return false;
  }
  
  public ArrayList<String> s()
  {
    Object localObject = bff.a(V());
    ArrayList localArrayList = new ArrayList();
    localObject = ((Map)localObject).values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      dkc localdkc = (dkc)((Iterator)localObject).next();
      if (localdkc.b()) {
        localArrayList.add(localdkc.a());
      }
    }
    return localArrayList;
  }
  
  public boolean t()
  {
    return v() != null;
  }
  
  public String toString()
  {
    String str2 = String.valueOf(ezi.b(d));
    String str1;
    if (e != null)
    {
      str1 = String.valueOf(ezi.b(e));
      if (str1.length() != 0) {
        str1 = "-".concat(str1);
      }
    }
    for (;;)
    {
      str1 = String.valueOf(str1);
      if (str1.length() == 0) {
        break;
      }
      return str2.concat(str1);
      str1 = new String("-");
      continue;
      str1 = "";
    }
    return new String(str2);
  }
  
  public String u()
  {
    Iterator localIterator = bff.a(V()).values().iterator();
    while (localIterator.hasNext())
    {
      dkc localdkc = (dkc)localIterator.next();
      if ((localdkc.d()) && (localdkc.e())) {
        return ezm.p(localdkc.a());
      }
    }
    return aal.oJ.getResources().getString(StressMode.jK);
  }
  
  public String v()
  {
    Iterator localIterator = bff.a(V()).values().iterator();
    while (localIterator.hasNext())
    {
      dkc localdkc = (dkc)localIterator.next();
      if ((localdkc.d()) && (localdkc.e())) {
        return localdkc.a();
      }
    }
    return null;
  }
  
  public boolean w()
  {
    return V().d("can_opt_into_gv_sms_integration");
  }
  
  @Deprecated
  public boolean x()
  {
    return b.e(g());
  }
  
  public boolean y()
  {
    return e != null;
  }
  
  public boolean z()
  {
    return V().d("is_business_features_eligible");
  }
}

/* Location:
 * Qualified Name:     bfd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */