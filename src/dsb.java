public class dsb
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dsb(kdi paramkdi)
  {
    super(responseHeader, 0L);
    if (dqf.a)
    {
      paramkdi = String.valueOf(paramkdi);
      new StringBuilder(String.valueOf(paramkdi).length() + 24).append("RemoveUserResponse from:").append(paramkdi);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kdi)lyi.b(new kdi(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsb(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dsb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */