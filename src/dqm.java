public class dqm
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dqm(jyj paramjyj)
  {
    super(responseHeader, -1L);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (jyj)lyi.b(new jyj(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dqm(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    bft.d(parambfz);
  }
}

/* Location:
 * Qualified Name:     dqm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */