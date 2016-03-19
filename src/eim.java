import android.text.TextUtils;

public final class eim
{
  private static volatile boolean e;
  private static volatile boolean f;
  private static volatile String g;
  private static volatile String h;
  final eir a;
  fkg b;
  gpx c;
  boolean d;
  private final fic i;
  private final bfd j;
  private final String k;
  private final fin<gli> l = new eip(this);
  private final fin<glm> m = new eiq(this);
  
  static
  {
    aal.a(new ein());
  }
  
  public eim(fic paramfic, bfd parambfd, eir parameir, String paramString)
  {
    i = paramfic;
    j = parambfd;
    a = parameir;
    k = paramString;
  }
  
  public eim(fic paramfic, eir parameir)
  {
    this(paramfic, null, parameir, null);
  }
  
  static void a()
  {
    int i1 = 1;
    g = aal.a(aal.oJ, "babel_local_contact_roster_mode", "default");
    h = aal.a(aal.oJ, "babel_local_contact_search_mode", "default");
    int n;
    if (TextUtils.equals(g, "always_disable"))
    {
      ezi.a("Babel", "Force disable local contact roster", new Object[0]);
      e = true;
      n = 1;
    }
    for (;;)
    {
      if (TextUtils.equals(h, "always_disable"))
      {
        ezi.a("Babel", "Force disable local contact search", new Object[0]);
        f = true;
      }
      for (;;)
      {
        if (n == 0)
        {
          ezi.a("Babel", "Enable local contact roster by default.", new Object[0]);
          e = false;
        }
        if (i1 == 0)
        {
          ezi.a("Babel", "Enable local contact search by default.", new Object[0]);
          f = false;
        }
        return;
        if (!TextUtils.equals(g, "always_enable")) {
          break label186;
        }
        ezi.a("Babel", "Force enable local contact roster", new Object[0]);
        e = false;
        n = 1;
        break;
        if (TextUtils.equals(h, "always_enable"))
        {
          ezi.a("Babel", "Force enable local contact search", new Object[0]);
          f = false;
        }
        else
        {
          i1 = 0;
        }
      }
      label186:
      n = 0;
    }
  }
  
  private String c()
  {
    if (j == null) {
      return "fake_account";
    }
    return j.a();
  }
  
  private String d()
  {
    if (j == null) {
      return null;
    }
    return j.U();
  }
  
  private void e()
  {
    if (!i.e())
    {
      ezi.d("Babel", "Google API client not connected. Skip loading aggregated people", new Object[0]);
      return;
    }
    glh localglh = new glh();
    localglh.a(k);
    localglh.d();
    glu.e.a(i, c(), d(), localglh).a(l);
  }
  
  private void f()
  {
    if (!i.e())
    {
      ezi.d("Babel", "Google API client not connected. Skip loading people", new Object[0]);
      return;
    }
    gll localgll = new gll();
    localgll.a();
    if (!TextUtils.isEmpty(k)) {
      localgll.a(k);
    }
    glu.e.a(i, c(), d(), localgll).a(m);
  }
  
  public void b()
  {
    if (!d)
    {
      if (!TextUtils.isEmpty(k)) {
        break label33;
      }
      if (e) {
        f();
      }
    }
    else
    {
      return;
    }
    e();
    return;
    label33:
    if (f)
    {
      f();
      return;
    }
    e();
  }
}

/* Location:
 * Qualified Name:     eim
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */