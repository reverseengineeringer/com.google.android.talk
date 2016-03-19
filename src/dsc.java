public class dsc
  extends dqr
{
  private static final long serialVersionUID = 1L;
  
  private dsc(kdk paramkdk)
  {
    super(responseHeader, aal.a(a.c, 0L), aal.a(a.o, 0L), a.d);
    if (dqf.a)
    {
      paramkdk = String.valueOf(paramkdk);
      new StringBuilder(String.valueOf(paramkdk).length() + 32).append("RenameConversationResponse from:").append(paramkdk);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kdk)lyi.b(new kdk(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsc(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
  }
}

/* Location:
 * Qualified Name:     dsc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */