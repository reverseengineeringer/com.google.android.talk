public class dqp
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dqp(jzf paramjzf)
  {
    super(responseHeader, aal.a(a, 0L));
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (jzf)lyi.b(new jzf(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dqp(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dqp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */