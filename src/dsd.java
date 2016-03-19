public class dsd
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dsd(kdn paramkdn)
  {
    super(responseHeader, -1L);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kdn)lyi.b(new kdn(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsd(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    String str = b).c;
    if (b).b == 1)
    {
      parambfz.R(str);
      bft.a(paramdyy, parambfz, str);
    }
    bft.d(parambfz);
  }
}

/* Location:
 * Qualified Name:     dsd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */