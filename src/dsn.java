public class dsn
  extends dqf
{
  private static final long serialVersionUID = 1L;
  public final boolean g;
  
  private dsn(keb paramkeb)
  {
    super(responseHeader, -1L);
    if ((a != null) && (aal.a(a, 0) == 1))
    {
      g = true;
      return;
    }
    g = false;
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (keb)lyi.b(new keb(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsn(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dsn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */