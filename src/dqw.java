public class dqw
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final byte[] g;
  private final byte[] h;
  
  private dqw(kgs paramkgs)
  {
    super(responseHeader, -1L);
    if (dqf.a)
    {
      String str = String.valueOf(paramkgs);
      new StringBuilder(String.valueOf(str).length() + 30).append("GetBroadcastInfoResponse from:").append(str);
    }
    g = kgd.a(a);
    h = kii.a(b);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kgs)lyi.b(new kgs(), paramArrayOfByte, paramArrayOfByte.length);
    if ((a(responseHeader)) || (a == null)) {
      return new dqs(responseHeader);
    }
    return new dqw(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dqw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */