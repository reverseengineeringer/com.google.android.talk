import android.app.Activity;
import android.content.Intent;

public final class jtg
{
  private final Activity a;
  private jtn b;
  private jtn c;
  private boolean d;
  private jtm e;
  private jtm f;
  
  public jtg(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  private String a(String paramString)
  {
    String str = String.valueOf(a.getClass().getSimpleName());
    return String.valueOf(paramString).length() + 1 + String.valueOf(str).length() + paramString + " " + str;
  }
  
  public void a()
  {
    b = jud.a();
    Object localObject = a.getIntent();
    jrw localjrw = jrw.a;
    localObject = jua.a((Intent)localObject);
    if (localObject != null) {
      jud.a((jtn)localObject);
    }
    for (c = ((jtn)localObject);; c = jud.a())
    {
      d = false;
      e = jud.a(a("Creating"));
      return;
      aal.P(a).b(a("Intenting into "));
    }
  }
  
  public void b()
  {
    fii.a(e);
    e.close();
    jud.b(a("Creating"));
    e = null;
    jud.a(b);
    b = null;
  }
  
  public void c()
  {
    b = jud.a();
    if ((c != null) && (!d)) {
      jud.a(c);
    }
    for (;;)
    {
      f = jud.a(a("Starting"));
      return;
      aal.P(a).a(a.getClass(), "onStart");
      c = jud.a();
      d = false;
    }
  }
  
  public void d()
  {
    fii.a(f);
    f.close();
    jud.b(a("Starting"));
    f = null;
    jud.a(b);
    b = null;
  }
  
  public void e()
  {
    b = jud.a();
    if ((c != null) && (!d))
    {
      jud.a(c);
      return;
    }
    aal.P(a).a(a.getClass(), "onResume");
    c = jud.a();
    d = false;
  }
  
  public void f()
  {
    jud.a(b);
    b = null;
  }
  
  public void g()
  {
    b = jud.a();
    jud.a(c);
  }
  
  public void h()
  {
    c = null;
    jud.a(b);
    b = null;
  }
  
  public void i()
  {
    b = jud.a();
    aal.P(a).a(a.getClass(), "onPause");
    c = jud.a();
    d = true;
  }
  
  public void j()
  {
    jud.a(b);
    b = null;
  }
  
  public void k()
  {
    fii.a(c, "onStop called before onPause");
    b = jud.a();
    jud.a(c);
  }
  
  public void l()
  {
    jud.a(b);
    b = null;
  }
  
  public void m()
  {
    fii.a(c, "onDestroy called before onPause");
    b = jud.a();
    jud.a(c);
  }
  
  public void n()
  {
    jud.a(b);
    b = null;
  }
  
  public void o()
  {
    if (jud.a(jrw.a))
    {
      jud.a("Back pressed").close();
      return;
    }
    aal.P(a).a("Back pressed");
  }
}

/* Location:
 * Qualified Name:     jtg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */