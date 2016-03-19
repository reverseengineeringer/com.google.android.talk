import android.text.TextUtils;

public class dpw
  extends dpf
{
  private static final long serialVersionUID = 1L;
  public final String a;
  
  public dpw(String paramString)
  {
    a = paramString;
  }
  
  public String a()
  {
    return "ui_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    Object localObject1;
    if (doo.e)
    {
      localObject1 = String.valueOf(a);
      if (((String)localObject1).length() == 0) {
        break label148;
      }
      "SetStatusMessageRequest.buildProtobuf: statusMessage=".concat((String)localObject1);
    }
    for (;;)
    {
      localObject1 = new kfd();
      if (!TextUtils.isEmpty(a))
      {
        localObject2 = new mel();
        b = a;
        a = Integer.valueOf(0);
        jxi localjxi = new jxi();
        a = new mel[] { localObject2 };
        a = new jxi[] { localjxi };
      }
      Object localObject2 = new ken();
      f = ((kfd)localObject1);
      requestHeader = don.a(paramString, paramInt1, paramInt2, h);
      return (lyi)localObject2;
      label148:
      new String("SetStatusMessageRequest.buildProtobuf: statusMessage=");
    }
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    return true;
  }
  
  public boolean a(String paramString)
  {
    return TextUtils.equals(paramString, a);
  }
  
  public String f()
  {
    return "presence/setpresence";
  }
}

/* Location:
 * Qualified Name:     dpw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */