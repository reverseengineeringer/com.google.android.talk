final class bvn
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final int g;
  private final czb h;
  private final String i;
  private final long j;
  
  private bvn(kch paramkch)
  {
    super(responseHeader, aal.a(a.c, 0L));
    i = a.d;
    j = aal.a(a.o, 0L);
    h = new czb(a.b.b, a.b.a);
    g = aal.a(a.k.b, 0);
  }
  
  public static dqf a(kch paramkch)
  {
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new bvn(paramkch);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (ezi.a("Babel", 3))
    {
      paramdyy = String.valueOf("processEventResponse response status: ");
      int k = c.b;
      localObject = c.a;
      ezi.b("Babel", String.valueOf(paramdyy).length() + 29 + String.valueOf(localObject).length() + paramdyy + k + " error description" + (String)localObject, new Object[0]);
    }
    Object localObject = (bvm)b;
    paramdyy = ((bvm)localObject).a();
    localObject = ((bvm)localObject).b();
    if ((paramdyy != null) && (i != null)) {
      parambfz.a();
    }
    try
    {
      parambfz.a(paramdyy, (String)localObject, i, d, j);
      parambfz.b();
      parambfz.c();
      parambfz.h((String)localObject, d);
      ((cyh)ilh.a(aal.oJ, cyh.class)).c(parambfz.g().g());
      new edp((String)localObject, h, d, j, i, paramdyy, g, emc.e).b(parambfz);
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
}

/* Location:
 * Qualified Name:     bvn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */