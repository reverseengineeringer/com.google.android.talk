public class dph
  extends dor
{
  private static final long serialVersionUID = 1L;
  public final int a;
  
  public dph(String paramString, int paramInt)
  {
    super(paramString);
    a = paramInt;
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    if (doo.e)
    {
      localObject = c;
      int i = a;
      new StringBuilder(String.valueOf(localObject).length() + 81).append("setConversationNotificationLevel build protobuf conversationID=").append((String)localObject).append(" level=").append(i);
    }
    Object localObject = new keh();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    a = don.a(c);
    b = Integer.valueOf(a);
    return (lyi)localObject;
  }
  
  public String f()
  {
    return "conversations/setconversationnotificationlevel";
  }
}

/* Location:
 * Qualified Name:     dph
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */