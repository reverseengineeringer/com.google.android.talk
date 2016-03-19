public class dsp
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dsp(iyu paramiyu)
  {
    super(apiHeader);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (iyu)lyi.b(new iyu(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(apiHeader))
    {
      String str = String.valueOf(paramArrayOfByte);
      ezi.d("Babel", String.valueOf(str).length() + 62 + "SetChatAclSettingResponse.processResponse: request failed for " + str, new Object[0]);
      return new dqs(apiHeader);
    }
    return new dsp(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    if (dqf.a)
    {
      parambfz = String.valueOf(parambfz.g().a());
      if (parambfz.length() != 0) {
        "SetChatAclSettingResponse.processResponse: success=,account=".concat(parambfz);
      }
    }
    else
    {
      return;
    }
    new String("SetChatAclSettingResponse.processResponse: success=,account=");
  }
}

/* Location:
 * Qualified Name:     dsp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */