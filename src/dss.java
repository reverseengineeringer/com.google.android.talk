public final class dss
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dss(kem paramkem)
  {
    super(responseHeader, aal.a(a, 0L));
  }
  
  public static dqf parseFrom(kem paramkem)
  {
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dss(paramkem);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    return parseFrom((kem)lyi.b(new kem(), paramArrayOfByte, paramArrayOfByte.length));
  }
}

/* Location:
 * Qualified Name:     dss
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */