public class drt
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private drt(kgq paramkgq)
  {
    super(responseHeader, -1L);
    if (dqf.a)
    {
      paramkgq = String.valueOf(paramkgq);
      new StringBuilder(String.valueOf(paramkgq).length() + 33).append("ModifyBroadcastInfoResponse from:").append(paramkgq);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kgq)lyi.b(new kgq(), paramArrayOfByte, paramArrayOfByte.length);
    if ((aal.a(responseHeader.a, 0) != 9) && (a(responseHeader))) {
      return new dqs(responseHeader);
    }
    return new drt(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     drt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */