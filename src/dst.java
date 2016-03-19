public class dst
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dst(keo paramkeo)
  {
    super(responseHeader, 0L);
    if (dqf.a)
    {
      paramkeo = String.valueOf(paramkeo);
      new StringBuilder(String.valueOf(paramkeo).length() + 31).append("SetInCallPresenceResponse from:").append(paramkeo);
    }
  }
  
  public static dqf parseFrom(keo paramkeo)
  {
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dst(paramkeo);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    return parseFrom((keo)lyi.b(new keo(), paramArrayOfByte, paramArrayOfByte.length));
  }
}

/* Location:
 * Qualified Name:     dst
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */