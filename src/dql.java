public class dql
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final String g;
  
  private dql(khh paramkhh)
  {
    if (a != null) {}
    for (g = a.a;; g = null)
    {
      if (dqf.a)
      {
        paramkhh = String.valueOf(paramkhh);
        new StringBuilder(String.valueOf(paramkhh).length() + 29).append("CreateHangoutIdResponse from:").append(paramkhh);
      }
      return;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (khh)lyi.b(new khh(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dql(paramArrayOfByte);
  }
  
  public String k()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     dql
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */