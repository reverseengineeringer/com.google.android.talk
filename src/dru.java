public class dru
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dru(kei paramkei)
  {
    super(responseHeader, aal.a(a, 0L));
    if (dqf.a)
    {
      paramkei = String.valueOf(paramkei);
      new StringBuilder(String.valueOf(paramkei).length() + 31).append("NotificationLevelResponse from:").append(paramkei);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kei)lyi.b(new kei(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dru(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    boolean bool = bft.a;
    if (c.b != 1)
    {
      int i = c.b;
      ezi.d("Babel", 59 + "Failed to set conversation preference with code " + i, new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     dru
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */