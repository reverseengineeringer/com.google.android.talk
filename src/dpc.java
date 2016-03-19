public class dpc
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final String[] a;
  
  public dpc(String[] paramArrayOfString)
  {
    a = paramArrayOfString;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    int i = 0;
    ezi.a("Babel_RequestWriter", "GetFifeUrlRequest build protobuf", new Object[0]);
    kfz localkfz = new kfz();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    paramInt2 = a.length;
    paramString = new kfy[paramInt2];
    paramInt1 = i;
    while (paramInt1 < paramInt2)
    {
      String str = a[paramInt1];
      kfy localkfy = new kfy();
      b = str;
      a = Integer.valueOf(1);
      paramString[paramInt1] = localkfy;
      paramInt1 += 1;
    }
    a = paramString;
    return localkfz;
  }
  
  public String f()
  {
    return "urls/urlredirectwrapper";
  }
}

/* Location:
 * Qualified Name:     dpc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */