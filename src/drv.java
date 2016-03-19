import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

public class drv
  extends dqf
{
  private static final long serialVersionUID = 1L;
  
  public drv(iyg paramiyg)
  {
    super(apiHeader);
  }
  
  public static dqf parseFrom(byte[] paramArrayOfByte)
  {
    paramArrayOfByte = (iyg)lyi.b(new iyg(), paramArrayOfByte, paramArrayOfByte.length);
    if (a(apiHeader)) {
      return new dqs(apiHeader);
    }
    return new drv(paramArrayOfByte);
  }
  
  public void a(bfz parambfz, dyy paramdyy)
  {
    super.a(parambfz, paramdyy);
    paramdyy = (dnn)c();
    String str1 = a;
    String str2 = b;
    parambfz.a(str1, str2, d);
    if (d) {
      parambfz.c(str1, str2, c, null);
    }
    for (;;)
    {
      RealTimeChatService.a(parambfz.g().g(), true);
      return;
      parambfz.i(str1, str2);
    }
  }
}

/* Location:
 * Qualified Name:     drv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */