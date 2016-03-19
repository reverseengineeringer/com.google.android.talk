import android.content.Intent;
import com.google.android.apps.hangouts.realtimechat.RealTimeChatService;

final class eaj
  extends edv
{
  eaj(eai parameai, String paramString, long paramLong1, long paramLong2)
  {
    super(paramString, paramLong1, paramLong2);
  }
  
  public String a(Object paramObject)
  {
    paramObject = String.valueOf(RealTimeChatService.g(((Intent)paramObject).getIntExtra("op", -1)));
    if (((String)paramObject).length() != 0) {
      return "opcode: ".concat((String)paramObject);
    }
    return new String("opcode: ");
  }
}

/* Location:
 * Qualified Name:     eaj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */