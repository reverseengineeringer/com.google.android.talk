public class dse
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dse(kiz paramkiz)
  {
    if (dqf.a)
    {
      paramkiz = String.valueOf(paramkiz);
      new StringBuilder(String.valueOf(paramkiz).length() + 33).append("ReportCallPerfStatsResponse from:").append(paramkiz);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kiz)lyi.b(new kiz(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader))
    {
      aal.c(2017);
      return new dqs(responseHeader);
    }
    aal.c(2016);
    return new dse(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */