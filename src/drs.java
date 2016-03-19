public class drs
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private drs(kkr paramkkr)
  {
    if (dqf.a)
    {
      paramkkr = String.valueOf(paramkkr);
      new StringBuilder(String.valueOf(paramkkr).length() + 37).append("HangoutInvitationModifyResponse from:").append(paramkkr);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kkr)lyi.b(new kkr(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drs(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     drs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */