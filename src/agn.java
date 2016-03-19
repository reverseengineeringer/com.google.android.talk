final class agn
  implements Runnable
{
  private final agr b;
  private final agv c;
  private final Runnable d;
  
  public agn(agy paramagy, agr paramagr, agv paramagv, Runnable paramRunnable)
  {
    b = paramagr;
    c = paramagv;
    d = paramRunnable;
  }
  
  public void run()
  {
    if (b.f()) {
      b.b("canceled-at-delivery");
    }
    label97:
    label107:
    for (;;)
    {
      return;
      if (c.a())
      {
        b.a(c.a);
        if (!c.d) {
          break label97;
        }
        b.a("intermediate-response");
      }
      for (;;)
      {
        if (d == null) {
          break label107;
        }
        d.run();
        return;
        b.b(c.c);
        break;
        b.b("done");
      }
    }
  }
}

/* Location:
 * Qualified Name:     agn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */