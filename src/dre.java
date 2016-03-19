public class dre
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private final String g;
  
  private dre(kia paramkia)
  {
    g = a;
    if (dqf.a)
    {
      paramkia = String.valueOf(paramkia);
      new StringBuilder(String.valueOf(paramkia).length() + 26).append("GetHangoutIdResponse from:").append(paramkia);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kia)lyi.b(new kia(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dre(paramArrayOfByte);
  }
  
  public String k()
  {
    return g;
  }
  
  public String l()
  {
    return b).a;
  }
}

/* Location:
 * Qualified Name:     dre
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */