public final class dsw
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dsw(ket paramket)
  {
    super(responseHeader, aal.a(a, 0L));
    if (dqf.a)
    {
      paramket = String.valueOf(paramket);
      new StringBuilder(String.valueOf(paramket).length() + 23).append("SetTypingResponse from:").append(paramket);
    }
  }
  
  public static dqf parseFrom(ket paramket)
  {
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsw(paramket);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    return parseFrom((ket)lyi.b(new ket(), paramArrayOfByte, paramArrayOfByte.length));
  }
}

/* Location:
 * Qualified Name:     dsw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */