import android.text.TextUtils;

public class dqa
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final String a;
  
  public dqa(String paramString)
  {
    a = paramString;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    kfq localkfq = new kfq();
    requestHeader = don.a(null, true, paramString, paramInt1, paramInt2, h);
    if (!TextUtils.isEmpty(a))
    {
      paramString = new kcr();
      b = a;
      a = new kcr[1];
      a[0] = paramString;
    }
    return localkfq;
  }
  
  public String f()
  {
    return "contacts/undismisssuggestedcontacts";
  }
}

/* Location:
 * Qualified Name:     dqa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */