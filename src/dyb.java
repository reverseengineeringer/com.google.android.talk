public final class dyb
  extends dqf
{
  private static final boolean g = false;
  private static final long serialVersionUID = 1L;
  
  static
  {
    imx localimx = ezi.l;
  }
  
  private dyb(kbw paramkbw)
  {
    super(responseHeader, -1L);
    if (g)
    {
      paramkbw = String.valueOf(paramkbw);
      new StringBuilder(String.valueOf(paramkbw).length() + 31).append("MarkEventObservedResponse from:").append(paramkbw);
    }
  }
  
  public static dqf a(kbw paramkbw)
  {
    if (a(responseHeader))
    {
      String str = String.valueOf(paramkbw);
      ezi.d("Babel", String.valueOf(str).length() + 62 + "MarkEventObservedResponse.processResponse: request failed for " + str, new Object[0]);
      return new dqs(responseHeader);
    }
    return new dyb(paramkbw);
  }
}

/* Location:
 * Qualified Name:     dyb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */