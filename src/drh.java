public class drh
  extends dqf
{
  private static final long serialVersionUID = 1L;
  public final String g;
  
  private drh(kao paramkao)
  {
    super(responseHeader, -1L);
    g = a;
    if (dqf.a)
    {
      paramkao = String.valueOf(g);
      if (paramkao.length() != 0) {
        "GetOffnetworkInviteUrlResponse: Invite Url=".concat(paramkao);
      }
    }
    else
    {
      return;
    }
    new String("GetOffnetworkInviteUrlResponse: Invite Url=");
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kao)lyi.b(new kao(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new drh(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (ezi.a("Babel", 3))
    {
      parambfz = String.valueOf("processGetOffnetworkInviteUrlResponse response status: ");
      int i = c.b;
      paramdyy = c.a;
      ezi.b("Babel", String.valueOf(parambfz).length() + 30 + String.valueOf(paramdyy).length() + parambfz + i + " error description " + paramdyy, new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     drh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */