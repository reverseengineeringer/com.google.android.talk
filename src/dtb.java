public class dtb
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dtb(kfw paramkfw)
  {
    super(responseHeader, -1L);
  }
  
  public static dqf parseFrom(kfw paramkfw)
  {
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dtb(paramkfw);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    return parseFrom((kfw)lyi.b(new kfw(), paramArrayOfByte, paramArrayOfByte.length));
  }
}

/* Location:
 * Qualified Name:     dtb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */