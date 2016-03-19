import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class dou
  extends dor
{
  private static final long serialVersionUID = 1L;
  public final long a;
  public final String[] b;
  
  public dou(String paramString, long paramLong, String[] paramArrayOfString)
  {
    super(paramString);
    a = paramLong;
    b = paramArrayOfString;
  }
  
  public String a()
  {
    return "event_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    if (doo.e)
    {
      localObject = c;
      long l = a;
      new StringBuilder(String.valueOf(localObject).length() + 41).append("Delete conversation ").append((String)localObject).append(" ").append(l);
    }
    Object localObject = new jyn();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    b = don.a(c);
    if (b != null)
    {
      d = b;
      a = Integer.valueOf(2);
      return (lyi)localObject;
    }
    c = Long.valueOf(a);
    a = Integer.valueOf(1);
    return (lyi)localObject;
  }
  
  public void a(bfd parambfd, dvn paramdvn)
  {
    if (ezi.a("Babel_RequestWriter", 3))
    {
      str = String.valueOf(c);
      if (str.length() == 0) {
        break label68;
      }
    }
    label68:
    for (String str = "DeleteConversationRequest: expired for ".concat(str);; str = new String("DeleteConversationRequest: expired for "))
    {
      ezi.b("Babel_RequestWriter", str, new Object[0]);
      super.a(parambfd, paramdvn);
      if (!d) {
        RealTimeChatService.a(parambfd, c, b);
      }
      return;
    }
  }
  
  public boolean a(cwk paramcwk, dvn paramdvn)
  {
    return false;
  }
  
  public String f()
  {
    return "conversations/deleteconversation";
  }
}

/* Location:
 * Qualified Name:     dou
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */