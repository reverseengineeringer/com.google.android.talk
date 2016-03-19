public class doq
  extends dor
{
  private static final long serialVersionUID = 1L;
  public final boolean a;
  public final long b;
  
  public doq(String paramString, long paramLong, boolean paramBoolean)
  {
    super(paramString);
    b = paramLong;
    a = paramBoolean;
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
      boolean bool = a;
      new StringBuilder(String.valueOf(localObject).length() + 27).append("Archive conversation ").append((String)localObject).append(" ").append(bool);
    }
    Object localObject = new kce();
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    a = don.a(c);
    c = Long.valueOf(b);
    if (a) {}
    for (paramInt1 = 2;; paramInt1 = 1)
    {
      b = Integer.valueOf(paramInt1);
      return (lyi)localObject;
    }
  }
  
  public String f()
  {
    return "conversations/modifyconversationview";
  }
}

/* Location:
 * Qualified Name:     doq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */