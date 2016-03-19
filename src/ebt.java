public final class ebt
  implements eff
{
  private final String a;
  private final byte[] b;
  private final long c;
  private final boolean d;
  private int e = 0;
  private final String f;
  private String g;
  
  public ebt(String paramString, byte[] paramArrayOfByte, long paramLong, boolean paramBoolean)
  {
    a = paramString;
    b = paramArrayOfByte;
    c = paramLong;
    d = paramBoolean;
    f = ezi.a(new Throwable());
  }
  
  public String a()
  {
    return a;
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void a_(String paramString)
  {
    g = paramString;
  }
  
  public byte[] b()
  {
    return b;
  }
  
  public int c()
  {
    return e;
  }
  
  public cwi d()
  {
    return new ebr(this);
  }
  
  public long e()
  {
    return c;
  }
  
  public boolean f()
  {
    return d;
  }
  
  public String toString()
  {
    String str1 = a;
    int i = b.length;
    long l = c;
    boolean bool = d;
    String str2 = f;
    String str3 = g;
    return String.valueOf(str1).length() + 159 + String.valueOf(str2).length() + String.valueOf(str3).length() + "retrive mms request: content location=" + str1 + " len(transactionId)=" + i + " notificationRowId=" + l + " autoRetrieve=" + bool + "\nCreation stack:\n" + str2 + "\nOrigin stack:\n" + str3;
  }
}

/* Location:
 * Qualified Name:     ebt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */