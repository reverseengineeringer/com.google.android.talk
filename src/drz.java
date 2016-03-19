public final class drz
  extends dqf
{
  private static final long serialVersionUID = 1L;
  private int g;
  private String h;
  private final String i;
  
  private drz(kdg paramkdg)
  {
    super(responseHeader, -1L);
    g = aal.a(a, 0);
    h = b;
    i = c;
    if (dqf.a)
    {
      paramkdg = String.valueOf(paramkdg);
      new StringBuilder(String.valueOf(paramkdg).length() + 28).append("RegisterDeviceResponse from:").append(paramkdg);
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kdg)lyi.b(new kdg(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drz(paramArrayOfByte);
  }
  
  public void a(eff parameff)
  {
    super.a(parameff);
    parameff = (dpj)b;
    if (u != null)
    {
      g = 2;
      h = u;
    }
  }
  
  public int k()
  {
    return b).a;
  }
  
  public String l()
  {
    return b).m;
  }
  
  public String m()
  {
    return i;
  }
  
  public int n()
  {
    return g;
  }
  
  public String o()
  {
    return h;
  }
  
  public boolean p()
  {
    return b).k;
  }
}

/* Location:
 * Qualified Name:     drz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */