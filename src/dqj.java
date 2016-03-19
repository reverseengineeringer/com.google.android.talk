public class dqj
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  public dqj() {}
  
  private dqj(kcf paramkcf)
  {
    super(responseHeader, 0L);
    if (dqf.a)
    {
      paramkcf = String.valueOf(paramkcf);
      new StringBuilder(String.valueOf(paramkcf).length() + 33).append("ArchiveConversationResponse from:").append(paramkcf);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kcf)lyi.b(new kcf(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dqj(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
  }
}

/* Location:
 * Qualified Name:     dqj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */