public class dsl
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dsl(kdz paramkdz)
  {
    super(responseHeader, -1L);
    if (dqf.a)
    {
      paramkdz = String.valueOf(paramkdz);
      new StringBuilder(String.valueOf(paramkdz).length() + 38).append("SendOffnetworkInvitationResponse from:").append(paramkdz);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kdz)lyi.b(new kdz(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsl(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dsl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */