public class dqg
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final byte[] g;
  private final byte[] h;
  
  private dqg(kgo paramkgo)
  {
    super(responseHeader, -1L);
    if (dqf.a)
    {
      String str = String.valueOf(paramkgo);
      new StringBuilder(String.valueOf(str).length() + 26).append("AddBroadcastResponse from:").append(str);
    }
    g = kgd.a(a);
    h = kii.a(b);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kgo)lyi.b(new kgo(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dqg(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dqg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */