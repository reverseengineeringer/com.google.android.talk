public class dqd
  extends dpf
{
  private static final long serialVersionUID = 2L;
  public final dqe[] a;
  public final int b;
  
  public dqd(dqe[] paramArrayOfdqe, int paramInt)
  {
    a = paramArrayOfdqe;
    b = paramInt;
  }
  
  public String a()
  {
    return "background_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    int i = 0;
    kdd localkdd = new kdd();
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    if ((a != null) && (b > 0))
    {
      b = new kax[b];
      paramInt2 = 0;
      paramInt1 = i;
      while ((paramInt1 < a.length) && (paramInt2 < b))
      {
        i = paramInt2;
        if (a[paramInt1].b() > 0L)
        {
          b[paramInt2] = a[paramInt1].c();
          i = paramInt2 + 1;
        }
        paramInt1 += 1;
        paramInt2 = i;
      }
    }
    return localkdd;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    paramdvn = edq.b(parambfd.g());
    if (paramdvn.g())
    {
      String str = String.valueOf(getClass().getSimpleName());
      parambfd = String.valueOf(ezi.b(parambfd.a()));
      ezi.d("Babel_RequestWriter", String.valueOf(str).length() + 9 + String.valueOf(parambfd).length() + str + " failed: " + parambfd, new Object[0]);
      paramdvn.a(0);
    }
  }
  
  public String f()
  {
    return "analytics/recordanalyticsevents";
  }
}

/* Location:
 * Qualified Name:     dqd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */