public class lwo
{
  private static final lvt b = lvt.a;
  public volatile lwp a;
  private lvk c;
  private lvt d;
  private volatile lvk e;
  
  public lwp a(lwp paramlwp)
  {
    c(paramlwp);
    return a;
  }
  
  public int b()
  {
    if (c != null) {
      return c.b();
    }
    if (e != null) {
      return e.b();
    }
    if (a != null) {
      return a.m();
    }
    return 0;
  }
  
  public lwp b(lwp paramlwp)
  {
    lwp locallwp = a;
    c = null;
    e = null;
    a = paramlwp;
    return locallwp;
  }
  
  protected void c(lwp paramlwp)
  {
    if (a != null) {
      return;
    }
    try
    {
      if (a != null) {
        return;
      }
    }
    finally {}
    try
    {
      if (c != null)
      {
        a = ((lwp)paramlwp.c().a(c, d));
        e = c;
      }
      for (c = null;; c = null)
      {
        return;
        a = paramlwp;
        e = lvk.a;
      }
    }
    catch (lwk locallwk)
    {
      for (;;)
      {
        a = paramlwp;
        e = lvk.a;
        c = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     lwo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */