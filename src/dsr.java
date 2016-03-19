public class dsr
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dsr(keo paramkeo)
  {
    super(responseHeader, 0L);
    if (dqf.a)
    {
      paramkeo = String.valueOf(paramkeo);
      new StringBuilder(String.valueOf(paramkeo).length() + 28).append("SetDndPresenceResponse from:").append(paramkeo);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (keo)lyi.b(new keo(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsr(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dsr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */