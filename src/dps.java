public class dps
  extends dpf
{
  private static final long serialVersionUID = 1L;
  private final int a;
  private final boolean b;
  
  public dps(int paramInt, boolean paramBoolean)
  {
    a = paramInt;
    b = paramBoolean;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kee localkee = new kee();
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    paramString = new jxn();
    a = Integer.valueOf(a);
    b = Boolean.valueOf(b);
    a = new jxn[1];
    a[0] = paramString;
    return localkee;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    dvd.a(paramdvn);
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    return equals(paramcwi);
  }
  
  public boolean equals(Object paramObject)
  {
    paramObject = (dps)paramObject;
    return (a == a) && (b == b);
  }
  
  public String f()
  {
    return "contacts/setconfigurationbit";
  }
}

/* Location:
 * Qualified Name:     dps
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */