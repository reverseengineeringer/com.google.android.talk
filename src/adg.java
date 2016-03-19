public class adg
{
  adp a = null;
  
  public adg()
  {
    a = new adp();
  }
  
  adg(adp paramadp)
  {
    a = paramadp;
  }
  
  adg(adp paramadp, byte paramByte)
  {
    this(paramadp);
  }
  
  adg(adp paramadp, char paramChar)
  {
    this(paramadp);
  }
  
  adg(adp paramadp, int paramInt)
  {
    this(paramadp);
  }
  
  adg(adp paramadp, short paramShort)
  {
    this(paramadp);
  }
  
  public adg(byte[] paramArrayOfByte, int paramInt)
  {
    this();
    a(131);
    b(18);
    a(paramArrayOfByte);
    c(paramInt);
  }
  
  adp a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    a.a(paramInt, 140);
  }
  
  public void a(adf paramadf)
  {
    a.a(paramadf, 137);
  }
  
  public void a(byte[] paramArrayOfByte)
  {
    a.a(paramArrayOfByte, 152);
  }
  
  public int b()
  {
    return a.a(140);
  }
  
  public void b(int paramInt)
  {
    a.a(18, 141);
  }
  
  public adf c()
  {
    return a.c(137);
  }
  
  public void c(int paramInt)
  {
    a.a(paramInt, 149);
  }
}

/* Location:
 * Qualified Name:     adg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */