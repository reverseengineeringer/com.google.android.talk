class dqr
  extends dqf
{
  private static final long serialVersionUID = 1L;
  public final String h;
  public final long i;
  
  public dqr(kdp paramkdp, long paramLong1, long paramLong2, String paramString)
  {
    super(paramkdp, paramLong1);
    h = paramString;
    i = paramLong2;
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (ezi.a("Babel", 3))
    {
      paramdyy = String.valueOf("processEventResponse response status: ");
      int j = c.b;
      str = c.a;
      ezi.b("Babel", String.valueOf(paramdyy).length() + 29 + String.valueOf(str).length() + paramdyy + j + " error description" + str, new Object[0]);
    }
    paramdyy = b).j;
    String str = b).c;
    if ((paramdyy != null) && (h != null)) {
      parambfz.a();
    }
    try
    {
      parambfz.a(paramdyy, str, h, d, i);
      parambfz.b();
      parambfz.c();
      parambfz.h(str, d);
      ((cyh)ilh.a(aal.oJ, cyh.class)).c(parambfz.g().g());
      return;
    }
    finally
    {
      parambfz.c();
    }
  }
}

/* Location:
 * Qualified Name:     dqr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */