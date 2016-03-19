public class dqu
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dqu(kae paramkae)
  {
    super(responseHeader, -1L);
    if (dqf.a)
    {
      paramkae = String.valueOf(paramkae);
      new StringBuilder(String.valueOf(paramkae).length() + 37).append("FinishPhoneVerificationResponse from:").append(paramkae);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kae)lyi.b(new kae(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dqu(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    dvd.c(true);
    parambfz = (djw)ilh.b(aal.oJ, djw.class);
    if (parambfz != null) {
      parambfz.a(104, false);
    }
  }
}

/* Location:
 * Qualified Name:     dqu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */