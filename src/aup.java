public final class aup
  implements auh, aui
{
  private auh a;
  private auh b;
  private aui c;
  private boolean d;
  
  public aup()
  {
    this(null);
  }
  
  public aup(aui paramaui)
  {
    c = paramaui;
  }
  
  public void a()
  {
    d = true;
    if (!b.e()) {
      b.a();
    }
    if ((d) && (!a.e())) {
      a.a();
    }
  }
  
  public void a(auh paramauh1, auh paramauh2)
  {
    a = paramauh1;
    b = paramauh2;
  }
  
  public boolean a(auh paramauh)
  {
    if ((c == null) || (c.a(this))) {}
    for (int i = 1; (i != 0) && ((paramauh.equals(a)) || (!a.g())); i = 0) {
      return true;
    }
    return false;
  }
  
  public void b()
  {
    d = false;
    a.b();
    b.b();
  }
  
  public boolean b(auh paramauh)
  {
    if ((c == null) || (c.b(this))) {}
    for (int i = 1; (i != 0) && (paramauh.equals(a)) && (!d()); i = 0) {
      return true;
    }
    return false;
  }
  
  public void c()
  {
    d = false;
    b.c();
    a.c();
  }
  
  public void c(auh paramauh)
  {
    if (paramauh.equals(b)) {}
    do
    {
      return;
      if (c != null) {
        c.c(this);
      }
    } while (b.f());
    b.c();
  }
  
  public boolean d()
  {
    boolean bool = false;
    if ((c != null) && (c.d())) {}
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (g())) {
        bool = true;
      }
      return bool;
    }
  }
  
  public boolean e()
  {
    return a.e();
  }
  
  public boolean f()
  {
    return (a.f()) || (b.f());
  }
  
  public boolean g()
  {
    return (a.g()) || (b.g());
  }
  
  public boolean h()
  {
    return a.h();
  }
  
  public void i()
  {
    a.i();
    b.i();
  }
}

/* Location:
 * Qualified Name:     aup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */