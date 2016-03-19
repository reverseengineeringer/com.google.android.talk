public class dqc
  extends dor
{
  private static final long serialVersionUID = 1L;
  public final long a;
  
  public dqc(String paramString, long paramLong)
  {
    super(paramString);
    a = paramLong;
  }
  
  public String a()
  {
    return "background_queue";
  }
  
  public lyi a(String paramString, int paramInt1, int paramInt2)
  {
    if (doo.e)
    {
      localObject = c;
      long l = a;
      new StringBuilder(String.valueOf(localObject).length() + 77).append("updateWatermark build protobuf conversationID=").append((String)localObject).append(" watermark=").append(l);
    }
    Object localObject = new kfv();
    a = don.a(c);
    b = Long.valueOf(a);
    requestHeader = don.a(paramString, paramInt1, paramInt2, h);
    return (lyi)localObject;
  }
  
  public boolean a(cwi paramcwi)
  {
    hbs.a(getClass(), paramcwi.getClass());
    return c.equals(c);
  }
  
  public String f()
  {
    return "conversations/updatewatermark";
  }
}

/* Location:
 * Qualified Name:     dqc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */