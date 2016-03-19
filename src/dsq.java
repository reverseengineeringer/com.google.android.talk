public class dsq
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  private dsq(kef paramkef)
  {
    super(responseHeader, 0L);
    if (ezi.a("Babel", 3))
    {
      str1 = String.valueOf("SetConfigurationBitResponse debugUrl: ");
      String str2 = String.valueOf(responseHeader.c);
      if (str2.length() == 0) {
        break label142;
      }
      str1 = str1.concat(str2);
      ezi.b("Babel", str1, new Object[0]);
      if (a.length > 0)
      {
        str1 = String.valueOf(a[0].b);
        if (str1.length() == 0) {
          break label154;
        }
      }
    }
    label142:
    label154:
    for (String str1 = "SetConfigurationBitResponse error: ".concat(str1);; str1 = new String("SetConfigurationBitResponse error: "))
    {
      ezi.b("Babel", str1, new Object[0]);
      if (dqf.a)
      {
        paramkef = String.valueOf(paramkef);
        new StringBuilder(String.valueOf(paramkef).length() + 33).append("SetConfigurationBitResponse from:").append(paramkef);
      }
      return;
      str1 = new String(str1);
      break;
    }
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (kef)lyi.b(new kef(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(responseHeader)) {
      return new dqs(responseHeader);
    }
    return new dsq(paramArrayOfByte);
  }
}

/* Location:
 * Qualified Name:     dsq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */