import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.widget.Toast;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public final class ibp
  extends img
  implements hqm, htx, iad
{
  private static final String[] a = { "update_account", "prepare_accounts", "logout_during_login", "logout", "load_accounts_add", "load_accounts_add_account_activity", "are_accounts_ready_for_login" };
  private String aj;
  private String ak;
  private int al = -1;
  private boolean am;
  private Runnable an;
  private boolean ao;
  private boolean ap;
  private boolean aq;
  private boolean ar;
  private String[] as;
  private evf at;
  private ibw b;
  private hpz c;
  private hql d;
  private iao e;
  private final hty f = new hty(this, lifecycle).a(this);
  private final hwj g = new hwj(lifecycle);
  private iaj h;
  private String i;
  
  static hus a(iba paramiba)
  {
    hus localhus = new hus(a);
    localhus.d().putBoolean("has_recoverable_error", b);
    localhus.d().putBoolean("has_irrecoverable_error", c);
    localhus.d().putInt("account_id", d);
    return localhus;
  }
  
  public static ibp a(bg parambg)
  {
    Object localObject2 = (ibp)parambg.a("login.fragment");
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new ibp();
      localObject2 = parambg.a();
      ((bz)localObject2).a((av)localObject1, "login.fragment");
      ((bz)localObject2).b();
      parambg.b();
    }
    return (ibp)localObject1;
  }
  
  private void a(String paramString)
  {
    String str2 = h.b;
    String str1 = str2;
    if ("com.google.android.libraries.social.login.LoginRequest.DEFAULT_ERROR_TOAST".equals(str2)) {
      if (aj == null) {
        break label57;
      }
    }
    label57:
    for (str1 = aj;; str1 = h.o)
    {
      str1 = context.getString(aal.us, new Object[] { str1 });
      b(str1, paramString);
      return;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    String[] arrayOfString = a;
    int k = arrayOfString.length;
    int j = 0;
    while (j < k)
    {
      String str = arrayOfString[j];
      f.b(str);
      j += 1;
    }
    x();
    ap = false;
    aq = false;
    if ((!paramBoolean) && (isAdded())) {
      getFragmentManager().a().a(this).b();
    }
  }
  
  private boolean a(int paramInt)
  {
    if (paramInt != -1)
    {
      b(paramInt);
      return true;
    }
    return false;
  }
  
  private void b(int paramInt)
  {
    if (!c.c(paramInt))
    {
      a(32 + "Not a valid account: " + paramInt);
      return;
    }
    hqb localhqb = c.a(paramInt);
    a(localhqb.b("account_name"), localhqb.b("effective_gaia_id"));
  }
  
  private void c(int paramInt)
  {
    Object localObject = binder.c(iax.class).iterator();
    int j = -1;
    while (((Iterator)localObject).hasNext())
    {
      int k = ((iax)((Iterator)localObject).next()).a();
      j = k;
      if (k != -1) {
        j = k;
      }
    }
    if ((j != -1) && (j != paramInt))
    {
      al = paramInt;
      localObject = new ibt("logout_during_login", j, b);
      f.a((htu)localObject);
      return;
    }
    if (h.g) {
      c.a(h.e, paramInt);
    }
    a(false);
    b.a(h, i, paramInt);
  }
  
  private void c(String paramString1, String paramString2)
  {
    int j = c.c(paramString1);
    if (j == -1)
    {
      a("Viewer account id invalid");
      return;
    }
    a(c.a(j).b("account_name"), paramString2);
  }
  
  private void f()
  {
    am = true;
    if (an == null) {
      an = jua.a(new ibq(this));
    }
    at = g.a(an);
  }
  
  private boolean q()
  {
    if (ao) {}
    while (f.a("are_accounts_ready_for_login")) {
      return false;
    }
    if (h.j) {
      return true;
    }
    f.a(new ibr("are_accounts_ready_for_login", b));
    return false;
  }
  
  private void r()
  {
    int k = 1;
    x();
    int j;
    if (aj != null)
    {
      a(aj, ak);
      j = 1;
      if (j == 0) {
        break label37;
      }
    }
    label37:
    label99:
    label101:
    label135:
    label173:
    label212:
    label264:
    label311:
    label313:
    label316:
    label318:
    label384:
    label387:
    label389:
    label392:
    label394:
    label397:
    label399:
    label402:
    for (;;)
    {
      return;
      j = 0;
      break;
      if (!a(h.c))
      {
        String str1 = h.o;
        String str2 = h.p;
        boolean bool;
        if (str1 != null) {
          if (c.b(str1, str2) != -1)
          {
            a(str1, str2);
            j = 1;
            if (j != 0) {
              break label311;
            }
            if (h.q == null) {
              break label313;
            }
            c(h.q, h.p);
            j = 1;
            if (j != 0) {
              break label316;
            }
            if (!h.h) {
              break label384;
            }
            if (h.k == -1) {
              break label318;
            }
            b(h.k);
            j = 1;
            if (j != 0) {
              break label387;
            }
            if (h.r == null) {
              break label389;
            }
            j = h.r.a();
            if (j == -1) {
              break label389;
            }
            b(j);
            j = 1;
            if (j != 0) {
              break label392;
            }
            if (!h.f) {
              break label394;
            }
            j = c.d(h.e);
            if (!b.a(h, j)) {
              break label394;
            }
            bool = a(j);
            if (bool) {
              break label397;
            }
            if (h.s == null) {
              break label399;
            }
            ar = true;
            s();
          }
        }
        for (j = k;; j = 0)
        {
          if (j != 0) {
            break label402;
          }
          c();
          return;
          a("Account not found");
          break label99;
          j = 0;
          break label101;
          break;
          j = 0;
          break label135;
          break;
          if (h.l != null)
          {
            a(h.l, h.m);
            j = 1;
            break label173;
          }
          if (h.n != null)
          {
            c(h.n, h.m);
            j = 1;
            break label173;
          }
          j = 0;
          break label173;
          break;
          j = 0;
          break label212;
          break;
          bool = false;
          break label264;
          break;
        }
      }
    }
  }
  
  private void s()
  {
    av localav;
    if ((ar) && (isResumed()))
    {
      x();
      ar = false;
      aq = true;
      hzw localhzw = (hzw)binder.a(h.s);
      String str = localhzw.getClass().getName();
      bg localbg = getChildFragmentManager();
      localav = localbg.a(str);
      if (localav != null) {
        break label128;
      }
      Bundle localBundle = h.t;
      localav = localhzw.a(localBundle);
      localav.setArguments(localBundle);
      localbg.a().a(localav, str).b();
      localbg.b();
    }
    label128:
    for (;;)
    {
      ((hzx)localav).a(h);
      return;
    }
  }
  
  private void t()
  {
    if (al != -1)
    {
      c(al);
      return;
    }
    c();
  }
  
  private void u()
  {
    a(false);
  }
  
  private void v()
  {
    e.b(getChildFragmentManager());
  }
  
  private void w()
  {
    String str;
    if ((isResumed()) && ((ao) || (ap)) && (!aq))
    {
      str = h.a;
      if (str == null) {
        break label62;
      }
    }
    for (;;)
    {
      e.a(getChildFragmentManager(), str, h.i);
      return;
      label62:
      str = context.getString(aal.uu);
    }
  }
  
  private void x()
  {
    e.a(getChildFragmentManager());
  }
  
  public void a()
  {
    f.a(new ibs("load_accounts_add_account_activity", d));
  }
  
  public void a(iaj paramiaj, String paramString)
  {
    if (ap)
    {
      a(true);
      b.a(h, i);
    }
    ap = true;
    h = paramiaj;
    i = paramString;
    aj = null;
    ak = null;
    al = -1;
    f();
  }
  
  public void a(String paramString, hus paramhus, huo paramhuo)
  {
    int k = 0;
    int j = 0;
    paramhuo.a(false);
    if ("update_account".equals(paramString)) {
      if (paramhus == null) {
        v();
      }
    }
    do
    {
      return;
      j = paramhus.d().getInt("account_id");
      if (paramhus.d().getBoolean("has_irrecoverable_error"))
      {
        paramString = b.g(j);
        if (paramString != null)
        {
          startActivityForResult(paramString, 1);
          return;
        }
        e.c(getChildFragmentManager());
        return;
      }
      if (paramhus.d().getBoolean("has_recoverable_error"))
      {
        v();
        return;
      }
      if (!b.a(h, j))
      {
        if (c.c(j))
        {
          ial localial = b.b(h, j);
          if (localial != null)
          {
            paramhuo = localial.getClass().getName();
            bg localbg = getChildFragmentManager();
            paramhus = localbg.a(paramhuo);
            paramString = paramhus;
            if (paramhus == null)
            {
              paramString = localial.a();
              localbg.a().a(paramString, paramhuo).b();
              localbg.b();
            }
            paramString = (iam)paramString;
            if (paramString != null)
            {
              paramString.a(j);
              return;
            }
          }
        }
        a(52 + "Login request not satisfied for account: " + j);
        return;
      }
      c(j);
      return;
      if ("prepare_accounts".equals(paramString)) {
        ao = false;
      }
      do
      {
        r();
        return;
        if ("logout_during_login".equals(paramString))
        {
          t();
          return;
        }
        if ("logout".equals(paramString))
        {
          u();
          return;
        }
        if ("load_accounts_add".equals(paramString))
        {
          if ((paramhus == null) || (paramhus.f()))
          {
            if (paramhus == null) {}
            for (;;)
            {
              b(context.getString(aal.ut), 54 + "Load accounts for add account task failed: " + j);
              return;
              j = paramhus.a();
            }
          }
          as = paramhus.d().getStringArray("account_name_array");
          d.a(this);
          return;
        }
        if ("load_accounts_add_account_activity".equals(paramString))
        {
          if ((paramhus == null) || (paramhus.f()))
          {
            if (paramhus == null) {}
            for (j = k;; j = paramhus.a())
            {
              b(context.getString(aal.ut), 58 + "Load accounts for add account activity failed: " + j);
              return;
            }
          }
          paramString = new HashSet(Arrays.asList(paramhus.d().getStringArray("account_name_array")));
          paramString.removeAll(Arrays.asList(as));
          if (!paramString.isEmpty())
          {
            aj = ((String)paramString.iterator().next());
            if (!q()) {
              break;
            }
            a(aj, null);
            return;
          }
          c();
          return;
        }
        if (!"are_accounts_ready_for_login".equals(paramString)) {
          break;
        }
        if ((paramhus == null) || (paramhus.f()))
        {
          b(context.getString(aal.ut), "Task result has error");
          return;
        }
      } while (paramhus.d().getBoolean("are_accounts_ready_for_login"));
    } while (ao);
    ao = true;
    w();
    paramString = new ibu("prepare_accounts", b);
    f.a(paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    aj = paramString1;
    ak = paramString2;
    int j = c.b(paramString1, paramString2);
    if ((c.c(j)) && (b.a(h, j))) {
      c(j);
    }
    for (j = 1; j != 0; j = 0) {
      return;
    }
    if (h.j)
    {
      a("RPCs disallowed");
      return;
    }
    w();
    paramString1 = new ibv("update_account", aj, ak, b, h);
    f.a(paramString1);
  }
  
  public void b()
  {
    f.a(new ibs("load_accounts_add", d));
  }
  
  public void b(String paramString1, String paramString2)
  {
    paramString2 = String.valueOf(paramString2);
    if (paramString2.length() != 0) {}
    for (paramString2 = "Login failed: ".concat(paramString2);; paramString2 = new String("Login failed: "))
    {
      Log.e("LoginHelperFragment", paramString2);
      paramString2 = ibo.a;
      if (paramString1 != null) {
        Toast.makeText(context, paramString1, 1).show();
      }
      c();
      return;
    }
  }
  
  public void c()
  {
    if (ap)
    {
      a(false);
      b.a(h, i);
    }
  }
  
  public void d()
  {
    e();
  }
  
  void e()
  {
    am = false;
    an = null;
    if (q()) {
      r();
    }
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1)
    {
      if (paramInt2 == -1) {
        f();
      }
    }
    else {
      return;
    }
    c();
  }
  
  protected void onAttachBinder(Bundle paramBundle)
  {
    super.onAttachBinder(paramBundle);
    b = ((ibw)binder.a(iaf.class));
    c = ((hpz)binder.a(hpz.class));
    d = ((hql)binder.a(hql.class));
    e = ((iao)binder.a(iao.class));
    binder.a(iad.class, this);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      ap = paramBundle.getBoolean("logging_in");
      am = paramBundle.getBoolean("login_pending");
      if (am) {
        f();
      }
      ar = paramBundle.getBoolean("interactive_login_pending");
      aq = paramBundle.getBoolean("logging_in_interactively");
      ao = paramBundle.getBoolean("preparing_accounts");
      as = paramBundle.getStringArray("account_names_snapshot");
      h = ((iaj)paramBundle.getParcelable("login_request"));
      i = paramBundle.getString("tag");
      aj = paramBundle.getString("selected_account_name");
      ak = paramBundle.getString("selected_effective_gaia_id");
      al = paramBundle.getInt("account_id_to_login");
    }
  }
  
  public void onResume()
  {
    super.onResume();
    w();
    s();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("logging_in", ap);
    paramBundle.putBoolean("login_pending", am);
    paramBundle.putBoolean("preparing_accounts", ao);
    paramBundle.putParcelable("login_request", h);
    paramBundle.putString("tag", i);
    paramBundle.putString("selected_account_name", aj);
    paramBundle.putString("selected_effective_gaia_id", ak);
    paramBundle.putInt("account_id_to_login", al);
    paramBundle.putStringArray("account_names_snapshot", as);
    paramBundle.putBoolean("interactive_login_pending", ar);
    paramBundle.putBoolean("logging_in_interactively", aq);
  }
  
  public void onStart()
  {
    super.onStart();
    if ((am) && (at == null)) {
      f();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    g.a(at);
    at = null;
  }
}

/* Location:
 * Qualified Name:     ibp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */