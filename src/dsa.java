public class dsa
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dsa(kgu paramkgu)
  {
    super(responseHeader, -1L);
    if (dqf.a)
    {
      paramkgu = String.valueOf(paramkgu);
      new StringBuilder(String.valueOf(paramkgu).length() + 29).append("RemoveBroadcastResponse from:").append(paramkgu);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kgu)lyi.b(new kgu(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsa(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dsa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */