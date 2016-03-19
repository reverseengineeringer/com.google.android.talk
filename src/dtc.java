public class dtc
  extends dqf
{
  private static final long serialVersionUID = 2L;
  
  private dtc(kde paramkde)
  {
    super(responseHeader, -1L);
    String str;
    if (ezi.a("Babel", 3))
    {
      str = String.valueOf("UploadAnalyticsResponse debugUrl: ");
      paramkde = String.valueOf(responseHeader.c);
      if (paramkde.length() == 0) {
        break label61;
      }
    }
    label61:
    for (paramkde = str.concat(paramkde);; paramkde = new String(str))
    {
      ezi.b("Babel", paramkde, new Object[0]);
      return;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kde)lyi.b(new kde(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dtc(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (ezi.a("Babel", 3))
    {
      paramdyy = String.valueOf("processEventResponse response status: ");
      int i = c.b;
      String str = c.a;
      ezi.b("Babel", String.valueOf(paramdyy).length() + 29 + String.valueOf(str).length() + paramdyy + i + " error description" + str, new Object[0]);
    }
    edq.b(parambfz.g().g()).a(3);
  }
}

/* Location:
 * Qualified Name:     dtc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */