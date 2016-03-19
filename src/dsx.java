public class dsx
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final boolean g;
  
  private dsx(key paramkey)
  {
    super(responseHeader, -1L);
    g = aal.a(b, false);
    if (dqf.a)
    {
      paramkey = String.valueOf(paramkey);
      new StringBuilder(String.valueOf(paramkey).length() + 36).append("StartPhoneVerificationResponse from:").append(paramkey);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (key)lyi.b(new key(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsx(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (g)
    {
      ezi.a("Babel", "Rate limit exceeded for phone verification", new Object[0]);
      parambfz = (djw)ilh.b(aal.oJ, djw.class);
      if (parambfz != null) {
        parambfz.a(105, true);
      }
    }
  }
}

/* Location:
 * Qualified Name:     dsx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */